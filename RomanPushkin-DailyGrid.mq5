//+------------------------------------------------------------------+
//|                                                   Daily-Grid.mq5 |
//|                                    Copyright 2013, Roman Pushkin |
//|                                              http://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2013, Roman Pushkin"
#property link      "http://www.mql5.com"
#property version   "1.00"
#property indicator_chart_window
//+----------------------------------------------+ 
//| Входные параметры индикатора                 |
//+----------------------------------------------+ 
string object_token_prefix = "daily_line_"; // Название линии
input color Line_Color=DarkGray;                // Цвет линии
//+------------------------------------------------------------------+
//|  Создание вертикальной линии                                     |
//+------------------------------------------------------------------+
void CreateVline(long     chart_id,      // идентификатор графика
                 string   name,          // имя объекта
                 int      nwin,          // индекс окна
                 datetime time1,         // время вертикального уровня
                 color    Color,         // цвет линии
                 int      style,         // стиль линии
                 int      width,         // толщина линии
                 bool     background,    // фоновое отображение линии
                 string   text)          // текст
  {
//----
   ObjectCreate(chart_id,name,OBJ_VLINE,nwin,time1,999999999);
   ObjectSetInteger(chart_id,name,OBJPROP_COLOR,Color);
   ObjectSetInteger(chart_id,name,OBJPROP_STYLE,style);
   ObjectSetInteger(chart_id,name,OBJPROP_WIDTH,width);
   ObjectSetString(chart_id,name,OBJPROP_TEXT,text);
   ObjectSetInteger(chart_id,name,OBJPROP_BACK,background);
   ObjectSetInteger(chart_id,name,OBJPROP_RAY,true);
//----
  }
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   
//---
   return(INIT_SUCCEEDED);
  }
  
//+------------------------------------------------------------------+
//| Custom indicator deinitialization function                       |
//+------------------------------------------------------------------+     
void OnDeinit(const int reason)
{
   int objects_count = ObjectsTotal(0, 0, -1) - 1;

   string current_object_name, temp;
   
   // iterate thru all the objects
   
   for(int i = objects_count; i >= 0 && !IsStopped(); i--)
   {
      // fetch object name
      current_object_name = ObjectName(0, i, 0, -1);
      temp = StringSubstr(current_object_name, 0, StringLen(object_token_prefix));

      // if starts with token_prefix, delete object
      if(temp == object_token_prefix) ObjectDelete(0, current_object_name);
   }

   ChartRedraw(0);
}  

bool is_object_exists(string object_name)
{
   // get objects count
   int objects_count = ObjectsTotal(0, 0, -1) - 1;
   
   string current_object_name;
   
   // iterate thru each object
   for(int i = 0; i < objects_count; i++)
   {
      current_object_name = ObjectName(0, i, 0, -1);
      
      if(current_object_name == object_name)
         return true;      
   }
   return false;
}
int last_rates_total = 0;
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
   // minimum period is H12
   
   if(Period() > PERIOD_H12) return 0;
   
   // we must have more than 2 bars
   
   if(rates_total < 2) return 0;

   // we don't redraw lines until new bar appears

   if(last_rates_total == rates_total)
      return rates_total;

   last_rates_total = rates_total;

   // iterate thru each bar

   for(int i = rates_total - 2; i > 0; i--)
   {
      datetime current_bar_time = time[i];
      datetime next_bar_time = time[i+1]; 
   
      if(is_first_daily_bar(current_bar_time, next_bar_time))
      {
         draw_vertical_line(next_bar_time);
      }
   }
   
   ChartRedraw(0);   

   return(rates_total);
  }
//+------------------------------------------------------------------+

string get_object_token(datetime time)
{
   return object_token_prefix + TimeToString(time);
}

bool is_first_daily_bar(datetime current_bar_time, datetime next_bar_time)
{
   MqlDateTime tmp1, tmp2;
   TimeToStruct(current_bar_time, tmp1);
   TimeToStruct(next_bar_time, tmp2);
   
   if(tmp1.day_of_year != tmp2.day_of_year)
      return true;
   
   return false;
}

void draw_vertical_line(datetime line_time)
{
   string object_token = get_object_token(line_time);
   
   if(!is_object_exists(object_token))
   {
      CreateVline(0, object_token, 0, line_time, Line_Color, 2, 1, true, "");   
   }
}