//+------------------------------------------------------------------+
//|                                                       IncGUI.mqh |
//|                                                          Integer |
//|                          https://login.mql5.com/ru/users/Integer |
//+------------------------------------------------------------------+
#property copyright "Integer"
#property link      "https://login.mql5.com/ru/users/Integer"

/*
   Location of classes in the file:
   
   1. The CGraphicObjectShell class.
   2. Declaration of the CGraphicObjectShell class with the name "g".
   3. The CWorkPiece class.
   4. Declaration the CWorkPiece class with the name "w".
   5. The CColorSchemes class.
   6. Declaration of the class CColorSchemes with the name "ClrScheme".
   7. Classes of controls.  
      7.1. The CInputBox class (an edit field).
*/

//+------------------------------------------------------------------+
//|                                                                  |
//|         The CGraphicObjectShell class                            |
//|                                                                  |
//+------------------------------------------------------------------+

/*!
	\brief   Creation of graphical object, management of graphical objects.
	
	\details The class contains methods for creation of graphical objects, methods for setting and 
	         getting their properties, methods that are related to graphical objects.
	         
	         The methods for creation of graphical objects start with the word "Create", all of them 
	         have three parameters: name, subwindow, chart. 
	         
	         The methods for setting of properties start with the word "Set". The methods for setting and getting 
	         of properties are represented in three variants: 1) without parameters, 2) with one parameter 
	         (object name), 3) with two parameters (name, chart).
	         
	         The 1-st variant is used for working with an object attached to the class. 
	         Attaching of a graphical object to the class is done during its creation using one of 
	         the Create...() methods or using the Attach() method. The 2-nd variant is intended for 
	         working with graphical objects located on the "own" chart; the 3-rd variant - for 
	         working with object on any chart.
	         
   \remark	The class is already declared with the "g" name.
*/
class CGraphicObjectShell{
   protected:
      string m_name;
      long m_id;
   public:
   
      /*
      
         The order of methods:
      
         1. Main methods.
         2. Creation.
         
         3. Getting properties of an attached object.
         4. Setting properties for an attached object.
         
         5. Getting properties by object name.
         6. Setting properties by object name.
         
         7. Getting properties by chart identifier and object name.
         8. Setting properties by chart identifier and object name.
         
         9. Other methods.
      */
      
      //+------------------------------------------------------------------+
      //|   Main                                                           |
      //+------------------------------------------------------------------+
   
		/*!	
			Attaching a graphical object.
		 	\param		string aName - name of the attached graphical object,
		 	\param		long aChartID=0 - identifier of the chart where the graphical object is located.
		*/
      void Attach(string aName,long aChartID=0){
         m_name=aName;
         m_id=aChartID;
      }
      
		/*!	
			Getting name of the attached graphical object.
         \return  Name of the attached graphical object.
		*/		
      string Name(){return(m_name);}   
      
		/*!	
			Getting identifier of the chart of the attached graphical object.
         \return  Identifier of the chart of the graphical object.
		*/      
      long ChartID(){return(m_id);}
      
      //+------------------------------------------------------------------+
      //|   Creation                                                       |
      //+------------------------------------------------------------------+      
		
		/*!	
			Creation of the "Vertical Line" object OBJ_VLINE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateVLine           (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_VLINE,             aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Horizontal line" object OBJ_HLINE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/        
      void CreateHLine           (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_HLINE,             aSubWindow,0,0);Attach(aName,aChartID);}

		/*!	
			Creation of the "Trend line" object OBJ_TREND.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/       
      void CreateTrend           (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_TREND,             aSubWindow,0,0);Attach(aName,aChartID);}

		/*!	
			Creation of the "Trend line by angle" object OBJ_TRENDBYANGLE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/           
      void CreateTrendByAngle    (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_TRENDBYANGLE,      aSubWindow,0,0);Attach(aName,aChartID);}

		/*!	
			Creation of the "Equidistant channel" object OBJ_CHANNEL.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/        
      void CreateChannel         (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_CHANNEL,           aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Standard deviation channel" object OBJ_STDDEVCHANNEL.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/        
      void CreateStdDevChannel   (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_STDDEVCHANNEL,     aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Linear regression channel" object OBJ_REGRESSION.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/        
      void CreateRegresion       (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_REGRESSION,        aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Andrew's Pitchfork" object OBJ_PITCHFORK.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreatePitchFork       (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_PITCHFORK,         aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Gann Line" object OBJ_GANNLINE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateGannLine        (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_GANNLINE,          aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Gann fan" object OBJ_GANNFAN.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateGannFan         (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_GANNFAN,           aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Gann grid" object OBJ_GANNGRID.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateGannGrid        (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_GANNGRID,          aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Fibo retracement" object OBJ_FIBO.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateFibo            (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_FIBO,              aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Fibo time zones" OBJ_FIBOTIMES.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateFiboTimes       (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_FIBOTIMES,         aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Fibo fan" object OBJ_FIBOFAN.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateFiboFan         (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_FIBOFAN,           aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Fibo arcs" object OBJ_FIBOARC.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateFiboArc         (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_FIBOARC,           aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Fibo channel" object OBJ_FIBOCHANNEL.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateFiboChannel     (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_FIBOCHANNEL,       aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Fibo extension" object OBJ_EXPANSION.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateExpansion       (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_EXPANSION,         aSubWindow,0,0);Attach(aName,aChartID);}	
		
		/*!	
			Creation of the "Elliott motive waves" object OBJ_ELLIOTWAVE5. 
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateElliotWave5     (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ELLIOTWAVE5,       aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Elliott corrective waves" object OBJ_ELLIOTWAVE3.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateElliotWave3     (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ELLIOTWAVE3,       aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Rectangle" object OBJ_RECTANGLE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateRectangle       (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_RECTANGLE,         aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Triangle" object OBJ_TRIANGLE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateTriangle        (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_TRIANGLE,          aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Ellipse" object OBJ_ELLIPSE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateEllipse         (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ELLIPSE,           aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Cycle lines" object OBJ_CYCLES.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateCycles          (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_CYCLES,            aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Thumbs up" object OBJ_ARROW_THUMB_UP.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateThumbUp         (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_THUMB_UP,    aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Thumbs down" object OBJ_ARROW_THUMB_DOWN.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateTumbDn          (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_THUMB_DOWN,  aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Arrow up" object OBJ_ARROW_UP.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowUp         (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_UP,          aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Arrow down" object OBJ_ARROW_DOWN.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowDn         (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_DOWN,        aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Stop sign" object OBJ_ARROW_STOP.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowStop       (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_STOP,        aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Check mark" object OBJ_ARROW_CHECK.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowCheck      (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_CHECK,       aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Left price level" object OBJ_ARROW_LEFT_PRICE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowLeftPrice  (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_LEFT_PRICE,  aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Right price label" object OBJ_ARROW_RIGHT_PRICE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowRightPrice (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_RIGHT_PRICE, aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Buy sign" object OBJ_ARROW_BUY.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowBuy        (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_BUY,         aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Sell sign" object OBJ_ARROW_SEL.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowSell       (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW_SELL,        aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Arrow" object OBJ_ARROW.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrow           (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROW,             aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Text" object OBJ_TEXT.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateText            (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_TEXT,              aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Text label" object OBJ_LABEL.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateLabel           (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_LABEL,             aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Button" object OBJ_BUTTON.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateButton          (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_BUTTON,            aSubWindow,0,0);Attach(aName,aChartID);}	      
		
		/*!	
			Creation of the "Chart" object OBJ_CHART.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateChart           (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_CHART,             aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Bitmap" object OBJ_BITMAP.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateBitmap          (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_BITMAP,            aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Bitmap label" object OBJ_BITMAP_LABEL.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreatePitmapLabel     (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_BITMAP_LABEL,      aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Edit" object OBJ_EDIT.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateEdit            (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_EDIT,              aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Arrowed line" object OBJ_ARROWED_LINE.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateArrowedLine     (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_ARROWED_LINE,      aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Event" object OBJ_EVENT.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateEvent           (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_EVENT,             aSubWindow,0,0);Attach(aName,aChartID);}
		
		/*!	
			Creation of the "Rectangle label" object OBJ_RECTANGLE_LABEL.
		 	\param		string aName - name of the created graphical object,
		 	\param		int aSubWindow=0 - a subwindow where the object is created,
		 	\param		long aChartID=0 - identifier of a chart where the object is created.			
		*/  
      void CreateRectangleLabel  (string aName,int aSubWindow=0,long aChartID=0){ObjectCreate(aChartID,aName,OBJ_RECTANGLE_LABEL,   aSubWindow,0,0);Attach(aName,aChartID);}

      //+------------------------------------------------------------------+
      //|   Getting properties of an attached object                       |
      //+------------------------------------------------------------------+         

		/*!	
			Color OBJPROP_COLOR.
		 	\return  Value of the color (color type).		
		*/  
      color                   Color       ()             {return( (color)                    ObjectGetInteger(m_id,m_name,OBJPROP_COLOR));}

		/*!	
			Style OBJPROP_STYLE.
		 	\return  Value of style (ENUM_LINE_STYLE type).		
		*/        
      ENUM_LINE_STYLE         Style       ()             {return( (ENUM_LINE_STYLE)          ObjectGetInteger(m_id,m_name,OBJPROP_STYLE));}

		/*!	
			Width OBJPROP_WIDTH.
		 	\return  Value of width (int type).		
		*/         
      int                     Width       ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_WIDTH));} 

		/*!	
			Position of the object on the background OBJPROP_BACK.
		 	\return  bool type. True - on the background, false - on the foreground.		
		*/        
      bool                    Back        ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_BACK));} 	

		/*!	
			Fill the object with color OBJPROP_FILL (для OBJ_RECTANGLE, OBJ_TRIANGLE, OBJ_ELLIPSE, OBJ_CHANNEL, OBJ_STDDEVCHANNEL, OBJ_REGRESSION)
		 	\return  bool type. True - filled, false - not filled.	
		*/       
      bool                    Fill        ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_FILL));} 		

		/*!	
			If the object is selected OBJPROP_SELECTED.
		 	\return  bool type. True - selected, false - not selected.	
		*/       
      bool                    Selected    ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_SELECTED));} 		

		/*!	
			Possibility to modify text in the "Edit" object OBJPROP_SELECTED.
		 	\return  bool type. True - modification disabled, false - enabled.	
		*/  
      bool                    ReadOnly    ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_READONLY));} 		

		/*!	
			Type of the object OBJPROP_TYPE.
		 	\return  ENUM_OBJECT type.	
		*/       
      ENUM_OBJECT             Type        ()             {return( (ENUM_OBJECT)              ObjectGetInteger(m_id,m_name,OBJPROP_TYPE));}

		/*!	
			Time of one of the anchor points of the object OBJPROP_TIME.
         \param   int aIndex - number of an anchor point (starting from 0).
		 	\return  Value of time (datetime type).		
		*/       
      datetime                Time        (int aIndex)   {return( (datetime)                 ObjectGetInteger(m_id,m_name,OBJPROP_TIME,aIndex));}	

		/*!	
			Possibility to select the object OBJPROP_SELECTABLE.
		 	\return  bool type. True - selection enabled, false - disabled.	
		*/         
      bool                    Selectable  ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_SELECTABLE));} 		

		/*!	
			Time of creation of the object OBJPROP_CREATETIME.
		 	\return  Value of time (datetime type).		
		*/       
      datetime                CreateTime  ()             {return( (datetime)                 ObjectGetInteger(m_id,m_name,OBJPROP_CREATETIME));}	

		/*!	
			Number of levels OBJPROP_LEVELS).
		 	\return  Value (int type).		
		*/    
      int                     Levels      ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_LEVELS));}	

		/*!	
			Color of level OBJPROP_LEVELCOLOR.
         \param   int aIndex - index of level (from 0).
		 	\return  Value of the color (color type).		
		*/  
      color                   LevelColor  (int aIndex)   {return( (color)                    ObjectGetInteger(m_id,m_name,OBJPROP_LEVELCOLOR,aIndex));}		

		/*!	
			Style of level OBJPROP_LEVELSTYLE.
         \param   int aIndex - index of level (from 0).
		 	\return  Value of style (ENUM_LINE_STYLE type).		
		*/        
      ENUM_LINE_STYLE         LevelStyle  (int aIndex)   {return( (ENUM_LINE_STYLE)          ObjectGetInteger(m_id,m_name,OBJPROP_LEVELSTYLE,aIndex));}	

		/*!	
			Width of level OBJPROP_LEVELWIDTH.
         \param   int aIndex - index of level (from 0).
		 	\return  Value of width (int type).		
		*/  
      int                     LevelWidth  (int aIndex)   {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_LEVELWIDTH,aIndex));}		

		/*!	
			Font size OBJPROP_FONTSIZE.
		 	\return  Value of size (int type).		
		*/        
      int                     FontSize    ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_FONTSIZE));}		   

		/*!	
			Ray left OBJPROP_RAY_LEFT.
		 	\return  bool type. True - there is a ray left, false - no ray.		
		*/       
      bool                    RayLeft     ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_RAY_LEFT));} 	

		/*!	
			Ray right OBJPROP_RAY_RIGHT.
		 	\return  bool type. True - there is a ray left, false - no ray.		
		*/         
      bool                    RayRight    ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_RAY_RIGHT));} 		

		/*!	
			The vertical line is drawn through all windows of a chart OBJPROP_RAY.
		 	\return  bool type. True - goes through all windows of a chart, false - drawn in one subwindow.		
		*/   
      bool                    Ray         ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_RAY));} 		

		/*!	
			Displaying of the entire ellipse of the "Fibo arcs" object OBJPROP_ELLIPSE.
      	\return  bool type. True - entire ellipse, false - arcs.		
		*/  
      bool                    Ellipse     ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_ELLIPSE));} 			   

		/*!	
			An arrow code for the "Arrow" object OBJPROP_ARROWCODE.
      	\return  An arrow code (char type).
		*/ 
      char                    ArrowCode   ()             {return( (char)                     ObjectGetInteger(m_id,m_name,OBJPROP_ARROWCODE));}

		/*!	
			Visibility of an object on timeframes OBJPROP_TIMEFRAMES.
      	\return  Flags of visibility (long type).
		*/ 
      long                    TimeFrames  ()             {return(                            ObjectGetInteger(m_id,m_name,OBJPROP_TIMEFRAMES));}

		/*!	
			Position of the anchor point OBJPROP_ANCHOR.
      	\return  Value of the anchor point (long type). For OBJ_ARROW it is one of the ENUM_ARROW_ANCHOR values, for OBJ_LABEL and OBJ_TEXT - one of the ENUM_ANCHORPOINT values.
		*/       
      long                    Anchor      ()             {return(                            ObjectGetInteger(m_id,m_name,OBJPROP_ANCHOR));}

		/*!	
			Distance along the X axis from the binding corner in pixels OBJPROP_XDISTANCE.
      	\return  Value (int type).
		*/      
      int                     XDistance   ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_XDISTANCE));}	

		/*!	
			Distance along the Y axis from the binding corner in pixels OBJPROP_YDISTANCE.
      	\return  Value (int type).
		*/        
      int                     YDistanse   ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_YDISTANCE));}	

		/*!	
			Trend of a Gann object OBJPROP_DIRECTION.
      	\return  Value (ENUM_GANN_DIRECTION type).
		*/   
      ENUM_GANN_DIRECTION     Direction   ()             {return( (ENUM_GANN_DIRECTION)      ObjectGetInteger(m_id,m_name,OBJPROP_DIRECTION));}

		/*!	
			Level of Elliott wave marking OBJPROP_DEGREE.
      	\return  Value (ENUM_ELLIOT_WAVE_DEGREE value).
		*/        
      ENUM_ELLIOT_WAVE_DEGREE Degree      ()             {return( (ENUM_ELLIOT_WAVE_DEGREE)  ObjectGetInteger(m_id,m_name,OBJPROP_DEGREE));}

		/*!	
			Displaying of lines of Elliott marking OBJPROP_DRAWLINES.
      	\return  bool type. True - enabled, false - disabled.		
		*/  
      bool                    DrawLines   ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_DRAWLINES));} 

		/*!	
			Button state (Pressed/Unpressed) OBJPROP_STATE.
      	\return  bool type. True - pressed, false - unpressed.
		*/ 
      bool                    State       ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_STATE));} 

		/*!	
			Identifier of the "Chart" object OBJPROP_CHART_ID.
      	\return  Identifier value (long type).
		*/ 
      long                    ChartChartID()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_CHART_ID));}

		/*!	
			Horizontal size of the object OBJPROP_XSIZE.
      	\return  Value of size (int type).
		*/       
      int                     XSize       ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_XSIZE));}	

		/*!	
			Vertical size of the object OBJPROP_YSIZE.
      	\return  Value of size (int type).
		*/ 
      int                     YSize       ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_YSIZE));}		

		/*!	
			The X coordinate of the beginning of the visible area of the object OBJPROP_XOFFSET.
      	\return  Value (int type).
		*/ 
      int                     XOffset     ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_XOFFSET));}	

		/*!	
			The Y coordinate of the beginning of the visibility area of the object OBJPROP_YOFFSET.
      	\return  Value (int type).
		*/ 
      int                     YOffset     ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_YOFFSET));}	

		/*!	
			Timeframe of the "Chart" object OBJPROP_PERIOD.
      	\return  Value (ENUM_TIMEFRAMES type).
		*/       
      ENUM_TIMEFRAMES         Period      ()             {return( (ENUM_TIMEFRAMES)          ObjectGetInteger(m_id,m_name,OBJPROP_PERIOD));}

		/*!	
			Flag of displaying of the time scale for the "Chart" object OBJPROP_DATE_SCALE.
      	\return  bool type. True - the scale is shown, false - the scale is hidden.
		*/ 
      bool                    DateScale   ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_DATE_SCALE));} 

		/*!	
			Flag of displaying of the price scale for the "Chart" object OBJPROP_PRICE_SCALE.
      	\return  bool type. True - the scale is shown, false - the scale is hidden.
		*/       
      bool                    PriceScale  ()             {return( (bool)                     ObjectGetInteger(m_id,m_name,OBJPROP_PRICE_SCALE));} 

		/*!	
			Scale for the "Chart" OBJPROP_CHART_SCALE.
      	\return  Value 1-5 (int type).
		*/        
      int                     ChartScale  ()             {return( (int)                      ObjectGetInteger(m_id,m_name,OBJPROP_CHART_SCALE));}		

		/*!	
			Background color OBJPROP_BGCOLOR.
		 	\return  Value of the color (color type).		
		*/  
      color                   BgColor     ()             {return( (color)                    ObjectGetInteger(m_id,m_name,OBJPROP_BGCOLOR));}

		/*!	
			Chart corner for binding the graphical object OBJPROP_CORNER.
		 	\return  Value (ENUM_BASE_CORNER type).
		*/  
      ENUM_BASE_CORNER        Corner      ()             {return( (ENUM_BASE_CORNER)         ObjectGetInteger(m_id,m_name,OBJPROP_CORNER));}

		/*!	
			Border type for the "Rectangle label" object OBJPROP_BORDER_TYPE.
		 	\return  Value (ENUM_BORDER_TYPE type).
		*/        
      ENUM_BORDER_TYPE        BorderType  ()             {return( (ENUM_BORDER_TYPE)         ObjectGetInteger(m_id,m_name,OBJPROP_BORDER_TYPE));}

		/*!	
			Price coordinate OBJPROP_PRICE.
         \param   int aIndex - point number (from zero).
		 	\return  Value (double type).
		*/    
      double                  Price       (int aIndex)   {return(                            ObjectGetDouble(m_id,m_name,OBJPROP_PRICE,aIndex));} 

		/*!	
			Level value OBJPROP_LEVELVALUE.
         \param   int aIndex - index of level (from 0).
		 	\return  Value (double type).
		*/          
      double                  LevelValue  (int aIndex)   {return(                            ObjectGetDouble(m_id,m_name,OBJPROP_LEVELVALUE,aIndex));}  

		/*!	
			Scale (property of the Gann objects and Fibo arcs) OBJPROP_SCALE.
		 	\return  Value (double type).
		*/        
      double                  Scale       ()             {return(                            ObjectGetDouble(m_id,m_name,OBJPROP_SCALE));}

		/*!	
			Угол OBJPROP_ANGLE.
		 	\return  Value (double type).
		*/ 
      double                  Angle       ()             {return(                            ObjectGetDouble(m_id,m_name,OBJPROP_ANGLE));}

		/*!	
			Deviation of the standard deviation channel OBJPROP_DEVIATION.
		 	\return  Value (double type).
		*/       
      double                  Deviation   ()             {return(                            ObjectGetDouble(m_id,m_name,OBJPROP_DEVIATION));}

		/*!	
			Text of the object OBJPROP_TEXT.
		 	\return  Text.
		*/  
      string                  Text        ()             {return(                            ObjectGetString(m_id,m_name,OBJPROP_TEXT));}

		/*!	
			Text of the tooltip. OBJPROP_TOOLTIP.
		 	\return  Text.
		*/  
      string                  ToolTip     ()             {return(                            ObjectGetString(m_id,m_name,OBJPROP_TOOLTIP));}

		/*!	
			Level description. OBJPROP_LEVELTEXT.
         \param   int aIndex - index of level (from 0).			
		 	\return  Text.
		*/        
      string                  LevelText   (int aIndex)   {return(                            ObjectGetString(m_id,m_name,OBJPROP_LEVELTEXT,aIndex));} 

		/*!	
			Font name. OBJPROP_FONT.
		 	\return  Name (string type).
		*/       
      string                  Font        ()             {return(                            ObjectGetString(m_id,m_name,OBJPROP_FONT));}

		/*!	
			Name of a bitmap file for the "On" state OBJPROP_BMPFILE, modifier 0.
		 	\return  File name (string type).
		*/       
      string                  BmpFileOn   ()             {return(                            ObjectGetString(m_id,m_name,OBJPROP_BMPFILE,0));}

		/*!	
			Name of a bitmap file for the "Off" state OBJPROP_BMPFILE, modifier 1.
		 	\return  File name (string type).
		*/    
      string                  BmpFileOff  ()             {return(                            ObjectGetString(m_id,m_name,OBJPROP_BMPFILE,1));}       

		/*!	
			Symbol for the "Chart" object OBJPROP_SYMBOL.
		 	\return  Symbol (string type).
		*/  
      string                  Symbol      ()             {return(                            ObjectGetString(m_id,m_name,OBJPROP_SYMBOL));}  
      
      //+------------------------------------------------------------------+
      //|   Setting properties for an attached object                      |
      //+------------------------------------------------------------------+    

		/*!	
			Setting the color OBJPROP_COLOR.
         \param		color aValue - color value.			
		*/  
      void SetColor        (color aValue)                      {ObjectSetInteger(m_id,m_name,OBJPROP_COLOR,             aValue);}

		/*!	
			Setting the style OBJPROP_STYLE.
         \param		ENUM_LINE_STYLE aValue - style value.			
		*/
      void SetStyle        (ENUM_LINE_STYLE aValue)            {ObjectSetInteger(m_id,m_name,OBJPROP_STYLE,             aValue);}

		/*!	
			Setting the width OBJPROP_WIDTH.
         \param		int aValue - width value.			
		*/  
      void SetWidth        (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_WIDTH,             aValue);} 

		/*!	
			Setting location on the foreground/background OBJPROP_BACK.
         \param		bool aValue - true/false (foreground/background).
		*/        
      void SetBack         (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_BACK,              aValue);} 	

		/*!	
			Enabling the filling OBJPROP_FILL.
         \param		bool aValue - true/false (filling/outline).
		*/       
      void SetFill         (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_FILL,              aValue);} 		

		/*!	
			Enabling selection OBJPROP_SELECTED.
         \param		bool aValue - true/false (selected/not selected).
		*/         
      void SetSelected     (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_SELECTED,          aValue);} 		

		/*!	
			Enabling the possibility of editing a text in the "Edit" object OBJPROP_READONLY.
         \param		bool aValue - true/false (enabled/disabled).
		*/         
      void SetReadOnly     (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_READONLY,          aValue);} 		

		/*!	
			Setting time of one of the anchor points OBJPROP_TIME.
         \param		int aIndex - point number (from zero),
         \param		datetime aValue - time value.
		*/    
      void SetTime         (int aIndex,datetime aValue)        {ObjectSetInteger(m_id,m_name,OBJPROP_TIME,              aIndex,aValue);}	

		/*!	
			Enabling the possibility of selection of the object OBJPROP_SELECTABLE.
         \param		bool aValue - true/false (enabled/disabled).
		*/       
      void SetSelectable   (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_SELECTABLE,        aValue);} 		

		/*!	
			Setting the number of levels OBJPROP_LEVELS.
         \param		int aValue - number of levels.
		*/       
      void SetLevels       (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_LEVELS,            aValue);}	

		/*!	
			Setting the color of level OBJPROP_LEVELCOLOR.
         \param   int aIndex - number of level (from zero),
         \param   color aValue - color value.
		*/        
      void SetLevelColor   (int aIndex,color aValue)           {ObjectSetInteger(m_id,m_name,OBJPROP_LEVELCOLOR,        aIndex,aValue);}		

		/*!	
			Setting the style of level OBJPROP_LEVELSTYLE.
         \param   int aIndex - number of level (from zero),
         \param   ENUM_LINE_STYLE aValue - style of value.
		*/  
      void SetLevelStyle   (int aIndex,ENUM_LINE_STYLE aValue) {ObjectSetInteger(m_id,m_name,OBJPROP_LEVELSTYLE,        aIndex,aValue);}

		/*!	
			Setting the width of level OBJPROP_LEVELWIDTH.
         \param   int aIndex - number of level (from zero),
         \param   int aValue - width value.
		*/  
      void SetLevelWidth   (int aIndex,int aValue)             {ObjectSetInteger(m_id,m_name,OBJPROP_LEVELWIDTH,        aIndex,aValue);}		

		/*!	
			Setting the font size OBJPROP_FONTSIZE.
         \param   int aValue - size value.
		*/  
      void SetFontSize     (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_FONTSIZE,          aValue);}		   

		/*!	
			Enabling ray left OBJPROP_RAY_LEFT.
         \param   bool aValue - true/false (enabled/disabled).
		*/  
      void SetRayLeft      (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_RAY_LEFT,          aValue);} 	

		/*!	
			Enabling ray right OBJPROP_RAY_RIGHT.
         \param   bool aValue - true/false (enabled/disabled).
		*/        
      void SetRayRight     (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_RAY_RIGHT,         aValue);} 		

		/*!	
			Enabling drawing of a vertical line through all subwindows OBJPROP_RAY.
         \param   bool aValue - true/false (enabled/disabled).
		*/   
      void SetRay          (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_RAY,               aValue);} 		

		/*!	
			Enable displaying of the entire ellipse for the Fibo arcs OBJPROP_ELLIPSE.
         \param   bool aValue - true/false (ellipse/arcs).
		*/        
      void SetEllipse      (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_ELLIPSE,           aValue);} 			   

		/*!	
			Setting the arrow code OBJPROP_ARROWCODE.
         \param   char aValue - arrow code.
		*/        
      void SetArrowCode    (char aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_ARROWCODE,         aValue);}

		/*!	
			Setting the visibility of the object on timeframes OBJPROP_TIMEFRAMES.
         \param   long aValue - combination of flags.
		*/           
      void SetTimeFrames   (long aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_TIMEFRAMES,        aValue);}

		/*!	
			Setting an anchor pointer OBJPROP_ANCHOR.
         \param   long aValue - anchor point (ENUM_ARROW_ANCHOR or ENUM_ANCHORPOINT).
		*/    
      void SetAnchor       (long aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_ANCHOR,            aValue);}

		/*!	
			Setting the distance along the X axis from the binding corner OBJPROP_XDISTANCE.
         \param   int aValue - distance value.
		*/    
      void SetXDistance    (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_XDISTANCE,         aValue);}	

		/*!	
			Setting the distance along the Y axis from the binding corner OBJPROP_YDISTANCE.
         \param   int aValue - distance value.
		*/          
      void SetYDistanse    (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_YDISTANCE,         aValue);}	

		/*!	
			Setting a trend for a Gann object OBJPROP_DIRECTION.
         \param   ENUM_GANN_DIRECTION aValue - trend value.
		*/ 
      void SetDirection    (ENUM_GANN_DIRECTION aValue)        {ObjectSetInteger(m_id,m_name,OBJPROP_DIRECTION,         aValue);}

		/*!	
			Setting the level of Elliott wave marking OBJPROP_DEGREE.
         \param   ENUM_ELLIOT_WAVE_DEGREE aValue - level value.
		*/ 
      void SetDegree       (ENUM_ELLIOT_WAVE_DEGREE aValue)    {ObjectSetInteger(m_id,m_name,OBJPROP_DEGREE,            aValue);}

		/*!	
			Displaying of lines of Elliott wave marking OBJPROP_DRAWLINES.
         \param   bool aValue - true/false (enabled/disabled).
		*/       
      void SetDrawLines    (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_DRAWLINES,         aValue);} 

		/*!	
			Setting the state of button.
         \param   bool aValue - true/false (pressed/unpressed).
		*/        
      void SetState        (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_STATE,             aValue);} 

		/*!	
			Setting the horizontal size OBJPROP_XSIZE.
         \param   int aValue - size value.
		*/       
      void SetXSize        (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_XSIZE,             aValue);}	

		/*!	
			Setting the vertical size OBJPROP_YSIZE.
         \param   int aValue - size value.
		*/          
      void SetYSize        (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_YSIZE,             aValue);}		

		/*!	
			Setting the X coordinate of the beginning of the visibility area OBJPROP_XOFFSET.
         \param   int aValue - value of coordinate.
		*/ 
      void SetXOffset      (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_XOFFSET,           aValue);}	

		/*!	
			Setting the Y coordinate of the beginning of the visibility area OBJPROP_YOFFSET.
         \param   int aValue - value of coordinate.
		*/ 
      void SetYOffset      (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_YOFFSET,           aValue);}	

		/*!	
			Setting a timeframe for the "Chart" object OBJPROP_PERIOD.
         \param   ENUM_TIMEFRAMES aValue - timeframe value.
		*/ 
      void SetPeriod       (ENUM_TIMEFRAMES aValue)            {ObjectSetInteger(m_id,m_name,OBJPROP_PERIOD,            aValue);}

		/*!	
			Enabling/disabling the visibility of the time scale for the "Chart" object OBJPROP_DATE_SCALE.
         \param   bool aValue - true/false (enabled/disabled).
		*/ 
      void SetDateScale    (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_DATE_SCALE,        aValue);} 

		/*!	
			Enabling disabling the visibility of the price scale for the "Chart" object OBJPROP_PRICE_SCALE.
         \param   bool aValue - true/false (enabled/disabled).
		*/       
      void SetPriceScale   (bool aValue)                       {ObjectSetInteger(m_id,m_name,OBJPROP_PRICE_SCALE,       aValue);} 

		/*!	
			Setting a scale for the "Chart" object OBJPROP_CHART_SCALE.
         \param   int aValue - value 1-5.
		*/         
      void SetChartScale   (int aValue)                        {ObjectSetInteger(m_id,m_name,OBJPROP_CHART_SCALE,       aValue);}		

		/*!	
			Setting a background color OBJPROP_BGCOLOR.
         \param   color aValue - color value.
		*/        
      void SetBgColor      (color aValue)                      {ObjectSetInteger(m_id,m_name,OBJPROP_BGCOLOR,           aValue);}

		/*!	
			Setting a chart corner for binding OBJPROP_CORNER.
         \param   ENUM_BASE_CORNER aValue - chart corner.
		*/       
      void SetCorner       (ENUM_BASE_CORNER aValue)           {ObjectSetInteger(m_id,m_name,OBJPROP_CORNER,            aValue);}

		/*!	
			Setting type of border for the "Rectangle label" object OBJPROP_BORDER_TYPE.
         \param   ENUM_BORDER_TYPE aValue - border type.
		*/        
      void SetBorderType   (ENUM_BORDER_TYPE aValue)           {ObjectSetInteger(m_id,m_name,OBJPROP_BORDER_TYPE,       aValue);}      

		/*!	
			Setting price value OBJPROP_PRICE.
         \param   int aIndex - number of point (from zero),
		 	\param  double aValue - value.
		*/   
      void SetPrice        (int aIndex,double aValue)          {ObjectSetDouble(m_id,m_name,OBJPROP_PRICE,              aIndex,aValue);} 

		/*!	
			Setting a level value OBJPROP_LEVELVALUE.
         \param   int aIndex - number of level (from zero),
		 	\param  double aValue - value.
		*/        
      void SetLevelValue   (int aIndex,double aValue)          {ObjectSetDouble(m_id,m_name,OBJPROP_LEVELVALUE,         aIndex,aValue);}  

		/*!	
			Setting a scale (property of the Gann objects and Fibo arcs) OBJPROP_SCALE.
		 	\param  double aValue - value of scale.
		*/       
      void SetScale        (double aValue)                     {ObjectSetDouble(m_id,m_name,OBJPROP_SCALE,              aValue);}     

		/*!	
			Setting an angle OBJPROP_ANGLE.
		 	\param  double aValue - value of angle OBJPROP_ANGLE.
		*/       
      void SetAngle        (double aValue)                     {ObjectSetDouble(m_id,m_name,OBJPROP_ANGLE,              aValue);}

		/*!	
			Setting a width of the standard deviation channel OBJPROP_DEVIATION.
		 	\param  double aValue - value of width (number of standard deviations).
		*/         
      void SetDeviation    (double aValue)                     {ObjectSetDouble(m_id,m_name,OBJPROP_DEVIATION,          aValue);}

		/*!	
			Setting a text OBJPROP_TEXT.
		 	\param  string aValue - text.
		*/   
      void SetText         (string aValue)                     {ObjectSetString(m_id,m_name,OBJPROP_TEXT,               aValue);}

		/*!	
			Setting a tooltip OBJPROP_TOOLTIP.
		 	\param  string aValue - text.
		 	\remark To disable the tooltip, set the value "\n".		 	
		*/       
      void SetToolTip      (string aValue)                     {ObjectSetString(m_id,m_name,OBJPROP_TOOLTIP,            aValue);}

		/*!	
			Setting a description of level OBJPROP_LEVELTEXT.
         \param   int aIndex - number of level (from zero),
		 	\param  string aValue - text. 	
		*/       
      void SetLevelText    (int aIndex,string aValue)          {ObjectSetString(m_id,m_name,OBJPROP_LEVELTEXT,          aIndex,aValue);} 

		/*!	
			Setting a font type OBJPROP_FONT.
		 	\param  string aValue - font name. 	
		*/        
      void SetFont         (string aValue)                     {ObjectSetString(m_id,m_name,OBJPROP_FONT,               aValue);} 

		/*!	
			Setting a bitmap file for the "On" state OBJPROP_BMPFILE, modifier 0.
		 	\param  string aValue - file name. 	
		*/         
      void SetBmpFileOn    (string aValue)                     {ObjectSetString(m_id,m_name,OBJPROP_BMPFILE,            0,aValue);}       

		/*!	
			Setting bitmap file for the "Off" state OBJPROP_BMPFILE, modifier 1.
		 	\param  string aValue - file name. 	
		*/        
      void SetBmpFileOff   (string aValue)                     {ObjectSetString(m_id,m_name,OBJPROP_BMPFILE,            1,aValue);}       

		/*!	
			Setting a symbol for the "Chart" object OBJPROP_SYMBOL.
		 	\param  string aValue - symbol. 	
		*/      
      void SetSymbol       (string aValue)                     {ObjectSetString(m_id,m_name,OBJPROP_SYMBOL,             aValue);}  
      
      //+------------------------------------------------------------------+
      //|   Getting properties by object name                              |
      //+------------------------------------------------------------------+         
   
		/*!	
			Color OBJPROP_COLOR.
			\param  string aName - name of the graphical object. 
		 	\return  Value of the color (color type).		
		*/     
      color                   Color       (string aName)             {return( (color)                    ObjectGetInteger(0,aName,OBJPROP_COLOR));}
		
		/*!	
			Style OBJPROP_STYLE.
         \param  string aName - name of the graphical object. 			
		 	\return  Value of style (ENUM_LINE_STYLE type).		
		*/        
      ENUM_LINE_STYLE         Style       (string aName)             {return( (ENUM_LINE_STYLE)          ObjectGetInteger(0,aName,OBJPROP_STYLE));}
		
		/*!	
			Width OBJPROP_WIDTH.
         \param  string aName - name of the graphical object. 						
		 	\return  Value of width (int type).		
		*/  
      int                     Width       (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_WIDTH));} 
		
		/*!	
			Position of the object on the background OBJPROP_BACK.
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - on the background, false - on the foreground.		
		*/    
      bool                    Back        (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_BACK));} 	
		
		/*!	
			Fill the object with color OBJPROP_FILL (для OBJ_RECTANGLE, OBJ_TRIANGLE, OBJ_ELLIPSE, OBJ_CHANNEL, OBJ_STDDEVCHANNEL, OBJ_REGRESSION)
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - filled, false - not filled.	
		*/  
      bool                    Fill        (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_FILL));} 		
		
		/*!	
			If the object is selected OBJPROP_SELECTED.
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - selected, false - not selected.	
		*/  
      bool                    Selected    (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_SELECTED));} 		
		
		/*!	
			Possibility to modify text in the "Edit" object OBJPROP_SELECTED.
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - modification disabled, false - enabled.	
		*/  
      bool                    ReadOnly    (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_READONLY));} 		
		
		/*!	
			Type of the object OBJPROP_TYPE.
         \param  string aName - name of the graphical object. 			
		 	\return  ENUM_OBJECT type.	
		*/  
      ENUM_OBJECT             Type        (string aName)             {return( (ENUM_OBJECT)              ObjectGetInteger(0,aName,OBJPROP_TYPE));}
		
		/*!	
			Time of one of the anchor points of the object OBJPROP_TIME.
         \param  string aName - name of the graphical object,
         \param   int aIndex - number of an anchor point (starting from 0).
		 	\return  Value of time (datetime type).		
		*/  
      datetime                Time        (string aName,int aIndex)  {return( (datetime)                 ObjectGetInteger(0,aName,OBJPROP_TIME,aIndex));}	
		
		/*!	
			Possibility to select the object OBJPROP_SELECTABLE.
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - selection enabled, false - disabled.	
		*/   
      bool                    Selectable  (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_SELECTABLE));} 		
		
		/*!	
			Time of creation of the object OBJPROP_CREATETIME.
         \param  string aName - name of the graphical object. 						
		 	\return  Value of time (datetime type).		
		*/  
      datetime                CreateTime  (string aName)             {return( (datetime)                 ObjectGetInteger(0,aName,OBJPROP_CREATETIME));}	
		
		/*!	
			Number of levels OBJPROP_LEVELS).
         \param  string aName - name of the graphical object. 						
		 	\return  Value (int type).		
		*/   
      int                     Levels      (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_LEVELS));}	
		
		/*!	
			Color of level OBJPROP_LEVELCOLOR.
         \param   int aIndex - index of level (from 0).
         \param  string aName - name of the graphical object. 			         
		 	\return  Value of the color (color type).		
		*/ 
      color                   LevelColor  (string aName,int aIndex)  {return( (color)                    ObjectGetInteger(0,aName,OBJPROP_LEVELCOLOR,aIndex));}		
		
		/*!	
			Style of level OBJPROP_LEVELSTYLE.
         \param   int aIndex - index of level (from 0).
         \param  string aName - name of the graphical object. 			         
		 	\return  Value of style (ENUM_LINE_STYLE type).		
		*/  
      ENUM_LINE_STYLE         LevelStyle  (string aName,int aIndex)  {return( (ENUM_LINE_STYLE)          ObjectGetInteger(0,aName,OBJPROP_LEVELSTYLE,aIndex));}	
		
		/*!	
			Width of level OBJPROP_LEVELWIDTH.
         \param   int aIndex - index of level (from 0).
         \param  string aName - name of the graphical object. 			         
		 	\return  Value of width (int type).		
		*/  
      int                     LevelWidth  (string aName,int aIndex)  {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_LEVELWIDTH,aIndex));}		
		
		/*!	
			Font size OBJPROP_FONTSIZE.
         \param  string aName - name of the graphical object. 						
		 	\return  Value of size (int type).		
		*/  
      int                     FontSize    (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_FONTSIZE));}		   
		
		/*!	
			Ray left OBJPROP_RAY_LEFT.
         \param  string aName - name of the graphical object. 						
		 	\return  bool type. True - there is a ray left, false - no ray.		
		*/    
      bool                    RayLeft     (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_RAY_LEFT));} 	
		
		/*!	
			Ray right OBJPROP_RAY_RIGHT.
         \param  string aName - name of the graphical object. 						
		 	\return  bool type. True - there is a ray left, false - no ray.		
		*/  
      bool                    RayRight    (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_RAY_RIGHT));} 		
		
		/*!	
			The vertical line is drawn through all windows of a chart OBJPROP_RAY.
         \param  string aName - name of the graphical object. 						
		 	\return  bool type. True - goes through all windows of a chart, false - drawn in one subwindow.		
		*/  
      bool                    Ray         (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_RAY));} 		
		
		/*!	
			Displaying of the entire ellipse of the "Fibo arcs" object OBJPROP_ELLIPSE.
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - entire ellipse, false - arcs.		
		*/ 
      bool                    Ellipse     (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_ELLIPSE));} 			   
		
		/*!	
			An arrow code for the "Arrow" object OBJPROP_ARROWCODE.
         \param  string aName - name of the graphical object. 						
      	\return  An arrow code (char type).
		*/ 
      char                    ArrowCode   (string aName)             {return( (char)                     ObjectGetInteger(0,aName,OBJPROP_ARROWCODE));}
		
		/*!	
			Visibility of an object on timeframes OBJPROP_TIMEFRAMES.
         \param  string aName - name of the graphical object. 						
      	\return  Flags of visibility (long type).
		*/ 
      long                    TimeFrames  (string aName)             {return(                            ObjectGetInteger(0,aName,OBJPROP_TIMEFRAMES));}
		
		/*!	
			Position of the anchor point OBJPROP_ANCHOR.
         \param  string aName - name of the graphical object. 						
      	\return  Value of the anchor point (long type). For OBJ_ARROW it is one of the ENUM_ARROW_ANCHOR values, for OBJ_LABEL and OBJ_TEXT - one of the ENUM_ANCHORPOINT values.
		*/   
      long                    Anchor      (string aName)             {return(                            ObjectGetInteger(0,aName,OBJPROP_ANCHOR));}
		
		/*!	
			Distance along the X axis from the binding corner in pixels OBJPROP_XDISTANCE.
         \param  string aName - name of the graphical object. 						
      	\return  Value (int type).
		*/ 
      int                     XDistance   (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_XDISTANCE));}	
		
		/*!	
			Distance along the Y axis from the binding corner in pixels OBJPROP_YDISTANCE.
         \param  string aName - name of the graphical object. 						
      	\return  Value (int type).
		*/  
      int                     YDistanse   (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_YDISTANCE));}	
		
		/*!	
			Trend of a Gann object OBJPROP_DIRECTION.
         \param  string aName - name of the graphical object. 						
      	\return  Value (ENUM_GANN_DIRECTION type).
		*/   
      ENUM_GANN_DIRECTION     Direction   (string aName)             {return( (ENUM_GANN_DIRECTION)      ObjectGetInteger(0,aName,OBJPROP_DIRECTION));}
		
		/*!	
			Level of Elliott wave marking OBJPROP_DEGREE.
         \param  string aName - name of the graphical object. 						
      	\return  Value (ENUM_ELLIOT_WAVE_DEGREE value).
		*/   
      ENUM_ELLIOT_WAVE_DEGREE Degree      (string aName)             {return( (ENUM_ELLIOT_WAVE_DEGREE)  ObjectGetInteger(0,aName,OBJPROP_DEGREE));}
		
		/*!	
			Displaying of lines of Elliott marking OBJPROP_DRAWLINES.
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - enabled, false - disabled.		
		*/  
      bool                    DrawLines   (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_DRAWLINES));} 
		
		/*!	
			Button state (Pressed/Unpressed) OBJPROP_STATE.
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - pressed, false - unpressed.
		*/ 
      bool                    State       (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_STATE));} 
		
		/*!	
			Identifier of the "Chart" object OBJPROP_CHART_ID.
         \param  string aName - name of the graphical object. 						
      	\return  Identifier value (long type).
		*/ 
      long                    ChartChartID(string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_CHART_ID));}
		
		/*!	
			Horizontal size of the object OBJPROP_XSIZE.
         \param  string aName - name of the graphical object. 						
      	\return  Value of size (int type).
		*/   
      int                     XSize       (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_XSIZE));}	
		
		/*!	
			Vertical size of the object OBJPROP_YSIZE.
         \param  string aName - name of the graphical object. 						
      	\return  Value of size (int type).
		*/ 
      int                     YSize       (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_YSIZE));}		
		
		/*!	
			The X coordinate of the beginning of the visible area of the object OBJPROP_XOFFSET.
         \param  string aName - name of the graphical object. 						
      	\return  Value (int type).
		*/ 
      int                     XOffset     (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_XOFFSET));}	
		
		/*!	
			The Y coordinate of the beginning of the visibility area of the object OBJPROP_YOFFSET.
         \param  string aName - name of the graphical object. 						
      	\return  Value (int type).
		*/ 
      int                     YOffset     (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_YOFFSET));}	
		
		/*!	
			Timeframe of the "Chart" object OBJPROP_PERIOD.
         \param  string aName - name of the graphical object. 						
      	\return  Value (ENUM_TIMEFRAMES type).
		*/  
      ENUM_TIMEFRAMES         Period      (string aName)             {return( (ENUM_TIMEFRAMES)          ObjectGetInteger(0,aName,OBJPROP_PERIOD));}
		
		/*!	
			Flag of displaying of the time scale for the "Chart" object OBJPROP_DATE_SCALE.
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - the scale is shown, false - the scale is hidden.
		*/ 
      bool                    DateScale   (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_DATE_SCALE));} 
		
		/*!	
			Flag of displaying of the price scale for the "Chart" object OBJPROP_PRICE_SCALE.
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - the scale is shown, false - the scale is hidden.
		*/  
      bool                    PriceScale  (string aName)             {return( (bool)                     ObjectGetInteger(0,aName,OBJPROP_PRICE_SCALE));} 
		
		/*!	
			Scale for the "Chart" OBJPROP_CHART_SCALE.
         \param  string aName - name of the graphical object. 						
      	\return  Value 1-5 (int type).
		*/  
      int                     ChartScale  (string aName)             {return( (int)                      ObjectGetInteger(0,aName,OBJPROP_CHART_SCALE));}		
		
		/*!	
			Background color OBJPROP_BGCOLOR.
         \param  string aName - name of the graphical object. 						
		 	\return  Value of the color (color type).		
		*/  
      color                   BgColor     (string aName)             {return( (color)                    ObjectGetInteger(0,aName,OBJPROP_BGCOLOR));}
		
		/*!	
			Chart corner for binding the graphical object OBJPROP_CORNER.
         \param  string aName - name of the graphical object. 						
		 	\return  Value (ENUM_BASE_CORNER type).
		*/  
      ENUM_BASE_CORNER        Corner      (string aName)             {return( (ENUM_BASE_CORNER)         ObjectGetInteger(0,aName,OBJPROP_CORNER));}
		
		/*!	
			Border type for the "Rectangle label" object OBJPROP_BORDER_TYPE.
         \param  string aName - name of the graphical object. 						
		 	\return  Value (ENUM_BORDER_TYPE type).
		*/   
      ENUM_BORDER_TYPE        BorderType  (string aName)             {return( (ENUM_BORDER_TYPE)         ObjectGetInteger(0,aName,OBJPROP_BORDER_TYPE));}
		
		/*!	
			Price coordinate OBJPROP_PRICE.
         \param  string aName - name of the graphical object,			
         \param   int aIndex - point number (from zero).
		 	\return  Value (double type).
		*/   
      double                  Price       (string aName,int aIndex)  {return(                            ObjectGetDouble(0,aName,OBJPROP_PRICE,aIndex));} 
		
		/*!	
			Level value OBJPROP_LEVELVALUE.
         \param  string aName - name of the graphical object,			
         \param   int aIndex - index of level (from 0).
		 	\return  Value (double type).
		*/     
      double                  LevelValue  (string aName,int aIndex)  {return(                            ObjectGetDouble(0,aName,OBJPROP_LEVELVALUE,aIndex));}  
		
		/*!	
			Scale (property of the Gann objects and Fibo arcs) OBJPROP_SCALE.
         \param  string aName - name of the graphical object. 						
		 	\return  Value (double type).
		*/   
      double                  Scale       (string aName)             {return(                            ObjectGetDouble(0,aName,OBJPROP_SCALE));}
		
		/*!	
			Угол OBJPROP_ANGLE.
         \param  string aName - name of the graphical object. 						
		 	\return  Value (double type).
		*/ 
      double                  Angle       (string aName)             {return(                            ObjectGetDouble(0,aName,OBJPROP_ANGLE));}
		
		/*!	
			Deviation of the standard deviation channel OBJPROP_DEVIATION.
         \param  string aName - name of the graphical object. 						
		 	\return  Value (double type).
		*/  
      double                  Deviation   (string aName)             {return(                            ObjectGetDouble(0,aName,OBJPROP_DEVIATION));}
		
		/*!	
			Text of the object OBJPROP_TEXT.
         \param  string aName - name of the graphical object. 						
		 	\return  Text.
		*/  
      string                  Text        (string aName)             {return(                            ObjectGetString(0,aName,OBJPROP_TEXT));}
		
		/*!	
			Text of the tooltip. OBJPROP_TOOLTIP.
         \param  string aName - name of the graphical object. 						
		 	\return  Text.
		 	\remark To disable the tooltip, set the value "\n".
		*/  
      string                  ToolTip     (string aName)             {return(                            ObjectGetString(0,aName,OBJPROP_TOOLTIP));}
		
		/*!	
			Level description. OBJPROP_LEVELTEXT.
         \param  string aName - name of the graphical object,		
         \param   int aIndex - index of level (from 0).			
		 	\return  Text.
		*/   
      string                  LevelText   (string aName,int aIndex)  {return(                            ObjectGetString(0,aName,OBJPROP_LEVELTEXT,aIndex));} 
		
		/*!	
			Font name. OBJPROP_FONT.
         \param  string aName - name of the graphical object. 						
		 	\return  Name (string type).
		*/   
      string                  Font        (string aName)             {return(                            ObjectGetString(0,aName,OBJPROP_FONT));}
		
		/*!	
			Name of a bitmap file for the "On" state OBJPROP_BMPFILE, modifier 0.
         \param  string aName - name of the graphical object. 						
		 	\return  File name (string type).
		*/   
      string                  BmpFileOn   (string aName)             {return(                            ObjectGetString(0,aName,OBJPROP_BMPFILE,0));}
		
		/*!	
			Name of a bitmap file for the "Off" state OBJPROP_BMPFILE, modifier 1.
         \param  string aName - name of the graphical object. 						
		 	\return  File name (string type).
		*/    
      string                  BmpFileOff  (string aName)             {return(                            ObjectGetString(0,aName,OBJPROP_BMPFILE,1));}       
		
		/*!	
			Symbol for the "Chart" object OBJPROP_SYMBOL.
         \param  string aName - name of the graphical object. 						
		 	\return  Symbol (string type).
		*/  
      string                  Symbol      (string aName)             {return(                            ObjectGetString(0,aName,OBJPROP_SYMBOL));}  

      //+------------------------------------------------------------------+
      //|   Setting properties by object name.                             |
      //+------------------------------------------------------------------+          
      
		/*!	
			Setting the color OBJPROP_COLOR.
			\param  string aName - name of the graphical object,
         \param		color aValue - color value.			
		*/  
      void SetColor        (string aName,color aValue)                        {ObjectSetInteger(0,aName,OBJPROP_COLOR,           aValue);}

		/*!	
			Setting the style OBJPROP_STYLE.
			\param  string aName - name of the graphical object,
         \param		ENUM_LINE_STYLE aValue - style value.			
		*/
      void SetStyle        (string aName,ENUM_LINE_STYLE aValue)              {ObjectSetInteger(0,aName,OBJPROP_STYLE,           aValue);}

		/*!	
			Setting the width OBJPROP_WIDTH.
			\param  string aName - name of the graphical object,
         \param		int aValue - width value.			
		*/ 
      void SetWidth        (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_WIDTH,           aValue);} 

		/*!	
			Setting location on the foreground/background OBJPROP_BACK.
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (foreground/background).
		*/   
      void SetBack         (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_BACK,            aValue);} 	

		/*!	
			Enabling the filling OBJPROP_FILL.
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (filling/outline).
		*/ 
      void SetFill         (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_FILL,            aValue);} 		

		/*!	
			Enabling selection OBJPROP_SELECTED.
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (selected/not selected).
		*/ 
      void SetSelected     (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_SELECTED,        aValue);} 		

		/*!	
			Enabling the possibility of editing a text in the "Edit" object OBJPROP_READONLY.
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (enabled/disabled).
		*/  
      void SetReadOnly     (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_READONLY,        aValue);} 		

		/*!	
			Setting time of one of the anchor points OBJPROP_TIME.
         \param		int aIndex - point number (from zero),
         \param  string aName - name of the graphical object,
         \param		datetime aValue - time value.
		*/    
      void SetTime         (string aName,int aIndex,datetime aValue)          {ObjectSetInteger(0,aName,OBJPROP_TIME,            aIndex,aValue);}	

		/*!	
			Enabling the possibility of selection of the object OBJPROP_SELECTABLE.
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (enabled/disabled).
		*/ 
      void SetSelectable   (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_SELECTABLE,      aValue);} 		

		/*!	
			Setting the number of levels OBJPROP_LEVELS.
			\param  string aName - name of the graphical object,
         \param		int aValue - number of levels.
		*/  
      void SetLevels       (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_LEVELS,          aValue);}	

		/*!	
			Setting the color of level OBJPROP_LEVELCOLOR.
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
         \param   color aValue - color value.
		*/   
      void SetLevelColor   (string aName,int aIndex,color aValue)             {ObjectSetInteger(0,aName,OBJPROP_LEVELCOLOR,      aIndex,aValue);}		

		/*!	
			Setting the style of level OBJPROP_LEVELSTYLE.
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
         \param   ENUM_LINE_STYLE aValue - style of value.
		*/  
      void SetLevelStyle   (string aName,int aIndex,ENUM_LINE_STYLE aValue)   {ObjectSetInteger(0,aName,OBJPROP_LEVELSTYLE,      aIndex,aValue);}

		/*!	
			Setting the width of level OBJPROP_LEVELWIDTH.
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
         \param   int aValue - width value.
		*/  
      void SetLevelWidth   (string aName,int aIndex,int aValue)               {ObjectSetInteger(0,aName,OBJPROP_LEVELWIDTH,      aIndex,aValue);}		

		/*!	
			Setting the font size OBJPROP_FONTSIZE.
			\param  string aName - name of the graphical object,
         \param   int aValue - size value.
		*/  
      void SetFontSize     (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_FONTSIZE,        aValue);}		   

		/*!	
			Enabling ray left OBJPROP_RAY_LEFT.
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/    
      void SetRayLeft      (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_RAY_LEFT,        aValue);} 	

		/*!	
			Enabling ray right OBJPROP_RAY_RIGHT.
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/  
      void SetRayRight     (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_RAY_RIGHT,       aValue);} 		

		/*!	
			Enabling drawing of a vertical line through all subwindows OBJPROP_RAY.
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/   
      void SetRay          (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_RAY,             aValue);} 		

		/*!	
			Enable displaying of the entire ellipse for the Fibo arcs OBJPROP_ELLIPSE.
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (ellipse/arcs).
		*/ 
      void SetEllipse      (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_ELLIPSE,         aValue);} 			   

		/*!	
			Setting the arrow code OBJPROP_ARROWCODE.
			\param  string aName - name of the graphical object,
         \param   char aValue - arrow code.
		*/ 
      void SetArrowCode    (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_ARROWCODE,       aValue);}

		/*!	
			Setting the visibility of the object on timeframes OBJPROP_TIMEFRAMES.
			\param  string aName - name of the graphical object,
         \param   long aValue - combination of flags.
		*/   
      void SetTimeFrames   (string aName,long aValue)                         {ObjectSetInteger(0,aName,OBJPROP_TIMEFRAMES,      aValue);}

		/*!	
			Setting an anchor pointer OBJPROP_ANCHOR.
			\param  string aName - name of the graphical object,
         \param   long aValue - anchor point (ENUM_ARROW_ANCHOR or ENUM_ANCHORPOINT).
		*/   
      void SetAnchor       (string aName,long aValue)                         {ObjectSetInteger(0,aName,OBJPROP_ANCHOR,          aValue);}

		/*!	
			Setting the distance along the X axis from the binding corner OBJPROP_XDISTANCE.
			\param  string aName - name of the graphical object,
         \param   int aValue - distance value.
		*/   
      void SetXDistance    (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_XDISTANCE,       aValue);}	

		/*!	
			Setting the distance along the Y axis from the binding corner OBJPROP_YDISTANCE.
			\param  string aName - name of the graphical object,
         \param   int aValue - distance value.
		*/ 
      void SetYDistanse    (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_YDISTANCE,       aValue);}	

		/*!	
			Setting a trend for a Gann object OBJPROP_DIRECTION.
			\param  string aName - name of the graphical object,
         \param   ENUM_GANN_DIRECTION aValue - trend value.
		*/ 
      void SetDirection    (string aName,ENUM_GANN_DIRECTION aValue)          {ObjectSetInteger(0,aName,OBJPROP_DIRECTION,       aValue);}

		/*!	
			Setting the level of Elliott wave marking OBJPROP_DEGREE.
			\param  string aName - name of the graphical object,
         \param   ENUM_ELLIOT_WAVE_DEGREE aValue - level value.
		*/ 
      void SetDegree       (string aName,ENUM_ELLIOT_WAVE_DEGREE aValue)      {ObjectSetInteger(0,aName,OBJPROP_DEGREE,          aValue);}

		/*!	
			Displaying of lines of Elliott wave marking OBJPROP_DRAWLINES.
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/ 
      void SetDrawLines    (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_DRAWLINES,       aValue);} 

		/*!	
			Setting the state of button.
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (pressed/unpressed).
		*/  
      void SetState        (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_STATE,           aValue);} 

		/*!	
			Setting the horizontal size OBJPROP_XSIZE.
			\param  string aName - name of the graphical object,
         \param   int aValue - size value.
		*/   
      void SetXSize        (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_XSIZE,           aValue);}	

		/*!	
			Setting the vertical size OBJPROP_YSIZE.
			\param  string aName - name of the graphical object,
         \param   int aValue - size value.
		*/  
      void SetYSize        (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_YSIZE,           aValue);}		

		/*!	
			Setting the X coordinate of the beginning of the visibility area OBJPROP_XOFFSET.
			\param  string aName - name of the graphical object,
         \param   int aValue - value of coordinate.
		*/ 
      void SetXOffset      (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_XOFFSET,         aValue);}	

		/*!	
			Setting the Y coordinate of the beginning of the visibility area OBJPROP_YOFFSET.
			\param  string aName - name of the graphical object,
         \param   int aValue - value of coordinate.
		*/ 
      void SetYOffset      (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_YOFFSET,         aValue);}	

		/*!	
			Setting a timeframe for the "Chart" object OBJPROP_PERIOD.
			\param  string aName - name of the graphical object,
         \param   ENUM_TIMEFRAMES aValue - timeframe value.
		*/ 
      void SetPeriod       (string aName,ENUM_TIMEFRAMES aValue)              {ObjectSetInteger(0,aName,OBJPROP_PERIOD,          aValue);}

		/*!	
			Enabling/disabling the visibility of the time scale for the "Chart" object OBJPROP_DATE_SCALE.
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/ 
      void SetDateScale    (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_DATE_SCALE,      aValue);} 

		/*!	
			Enabling disabling the visibility of the price scale for the "Chart" object OBJPROP_PRICE_SCALE.
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/ 
      void SetPriceScale   (string aName,bool aValue)                         {ObjectSetInteger(0,aName,OBJPROP_PRICE_SCALE,     aValue);} 

		/*!	
			Setting a scale for the "Chart" object OBJPROP_CHART_SCALE.
			\param  string aName - name of the graphical object,
         \param   int aValue - value 1-5.
		*/  
      void SetChartScale   (string aName,int aValue)                          {ObjectSetInteger(0,aName,OBJPROP_CHART_SCALE,     aValue);}		

		/*!	
			Setting a background color OBJPROP_BGCOLOR.
			\param  string aName - name of the graphical object,
         \param   color aValue - color value.
		*/    
      void SetBgColor      (string aName,color aValue)                        {ObjectSetInteger(0,aName,OBJPROP_BGCOLOR,         aValue);}

		/*!	
			Setting a chart corner for binding OBJPROP_CORNER.
			\param  string aName - name of the graphical object,
         \param   ENUM_BASE_CORNER aValue - chart corner.
		*/  
      void SetCorner       (string aName,ENUM_BASE_CORNER aValue)             {ObjectSetInteger(0,aName,OBJPROP_CORNER,          aValue);}

		/*!	
			Setting type of border for the "Rectangle label" object OBJPROP_BORDER_TYPE.
			\param  string aName - name of the graphical object,
         \param   ENUM_BORDER_TYPE aValue - border type.
		*/   
      void SetBorderType   (string aName,ENUM_BORDER_TYPE aValue)             {ObjectSetInteger(0,aName,OBJPROP_BORDER_TYPE,     aValue);}      

		/*!	
			Setting price value OBJPROP_PRICE.
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of point (from zero),
		 	\param  double aValue - value.
		*/  
      void SetPrice        (string aName,int aIndex,double aValue)            {ObjectSetDouble(0,aName,OBJPROP_PRICE,            aIndex,aValue);} 

		/*!	
			Setting a level value OBJPROP_LEVELVALUE.
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
		 	\param  double aValue - value.
		*/  
      void SetLevelValue   (string aName,int aIndex,double aValue)            {ObjectSetDouble(0,aName,OBJPROP_LEVELVALUE,       aIndex,aValue);}  

		/*!	
			Setting a scale (property of the Gann objects and Fibo arcs) OBJPROP_SCALE.
			\param  string aName - name of the graphical object,
		 	\param  double aValue - value of scale.
		*/ 
      void SetScale        (string aName,double aValue)                       {ObjectSetDouble(0,aName,OBJPROP_SCALE,            aValue);}     

		/*!	
			Setting an angle OBJPROP_ANGLE.
			\param  string aName - name of the graphical object,
		 	\param  double aValue - value of angle OBJPROP_ANGLE.
		*/    
      void SetAngle        (string aName,double aValue)                       {ObjectSetDouble(0,aName,OBJPROP_ANGLE,            aValue);}

		/*!	
			Setting a width of the standard deviation channel OBJPROP_DEVIATION.
			\param  string aName - name of the graphical object,
		 	\param  double aValue - value of width (number of standard deviations).
		*/   
      void SetDeviation    (string aName,double aValue)                       {ObjectSetDouble(0,aName,OBJPROP_DEVIATION,        aValue);}

		/*!	
			Setting a text OBJPROP_TEXT.
			\param  string aName - name of the graphical object,
		 	\param  string aValue - text.
		*/  
      void SetText         (string aName,string aValue)                       {ObjectSetString(0,aName,OBJPROP_TEXT,             aValue);}

		/*!	
			Setting a tooltip OBJPROP_TOOLTIP.
			\param  string aName - name of the graphical object,
		 	\param  string aValue - text.
		 	\remark To disable the tooltip, set the value "\n".		 	
		*/
      void SetToolTip      (string aName,string aValue)                       {ObjectSetString(0,aName,OBJPROP_TOOLTIP,          aValue);}

		/*!	
			Setting a description of level OBJPROP_LEVELTEXT.
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
		 	\param  string aValue - text. 	
		*/  
      void SetLevelText    (string aName,int aIndex,string aValue)            {ObjectSetString(0,aName,OBJPROP_LEVELTEXT,        aIndex,aValue);} 

		/*!	
			Setting a font type OBJPROP_FONT.
			\param  string aName - name of the graphical object,
		 	\param  string aValue - font name. 	
		*/ 
      void SetFont         (string aName,string aValue)                       {ObjectSetString(0,aName,OBJPROP_FONT,             aValue);} 

		/*!	
			Setting a bitmap file for the "On" state OBJPROP_BMPFILE, modifier 0.
			\param  string aName - name of the graphical object,
		 	\param  string aValue - file name. 	
		*/  
      void SetBmpFileOn    (string aName,string aValue)                       {ObjectSetString(0,aName,OBJPROP_BMPFILE,          0,aValue);}       

		/*!	
			Setting bitmap file for the "Off" state OBJPROP_BMPFILE, modifier 1.
			\param  string aName - name of the graphical object,
		 	\param  string aValue - file name. 	
		*/  
      void SetBmpFileOff   (string aName,string aValue)                       {ObjectSetString(0,aName,OBJPROP_BMPFILE,          1,aValue);}       

		/*!	
			Setting a symbol for the "Chart" object OBJPROP_SYMBOL.
			\param  string aName - name of the graphical object,
		 	\param  string aValue - symbol. 	
		*/  
      void SetSymbol       (string aName,string aValue)                       {ObjectSetString(0,aName,OBJPROP_SYMBOL,           aValue);}  
   
      //+------------------------------------------------------------------+
      //|   Getting properties by chart identifier and object name         |
      //+------------------------------------------------------------------+         
      
		/*!	
			Color OBJPROP_COLOR.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object. 
		 	\return  Value of the color (color type).		
		*/  
      color                   Color       (long aChartID,string aName)             {return( (color)                    ObjectGetInteger(aChartID,aName,OBJPROP_COLOR));}
		
		/*!	
			Style OBJPROP_STYLE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 			
		 	\return  Value of style (ENUM_LINE_STYLE type).		
		*/        
      ENUM_LINE_STYLE         Style       (long aChartID,string aName)             {return( (ENUM_LINE_STYLE)          ObjectGetInteger(aChartID,aName,OBJPROP_STYLE));}
		
		/*!	
			Width OBJPROP_WIDTH.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value of width (int type).		
		*/        
      int                     Width       (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_WIDTH));} 
		
		/*!	
			Position of the object on the background OBJPROP_BACK.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - on the background, false - on the foreground.		
		*/          
      bool                    Back        (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_BACK));} 	
		
		/*!	
			Fill the object with color OBJPROP_FILL (для OBJ_RECTANGLE, OBJ_TRIANGLE, OBJ_ELLIPSE, OBJ_CHANNEL, OBJ_STDDEVCHANNEL, OBJ_REGRESSION)
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - filled, false - not filled.	
		*/  
      bool                    Fill        (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_FILL));} 		
		
		/*!	
			If the object is selected OBJPROP_SELECTED.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - selected, false - not selected.	
		*/  
      bool                    Selected    (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_SELECTED));} 		
		
		/*!	
			Possibility to modify text in the "Edit" object OBJPROP_SELECTED.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - modification disabled, false - enabled.	
		*/  
      bool                    ReadOnly    (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_READONLY));} 		
		
		/*!	
			Type of the object OBJPROP_TYPE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 			
		 	\return  ENUM_OBJECT type.	
		*/  
      ENUM_OBJECT             Type        (long aChartID,string aName)             {return( (ENUM_OBJECT)              ObjectGetInteger(aChartID,aName,OBJPROP_TYPE));}
		
		/*!	
			Time of one of the anchor points of the object OBJPROP_TIME.
			\param   long aChartID - identifier of the chart,
         \param   string aName - name of the graphical object,
         \param   int aIndex - number of an anchor point (starting from 0).
		 	\return  Value of time (datetime type).		
		*/  
      datetime                Time        (long aChartID,string aName,int aIndex)  {return( (datetime)                 ObjectGetInteger(aChartID,aName,OBJPROP_TIME,aIndex));}	
		
		/*!	
			Possibility to select the object OBJPROP_SELECTABLE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 			
		 	\return  bool type. True - selection enabled, false - disabled.	
		*/   
      bool                    Selectable  (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_SELECTABLE));} 		
		
		/*!	
			Time of creation of the object OBJPROP_CREATETIME.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value of time (datetime type).		
		*/  
      datetime                CreateTime  (long aChartID,string aName)             {return( (datetime)                 ObjectGetInteger(aChartID,aName,OBJPROP_CREATETIME));}	
		
		/*!	
			Number of levels OBJPROP_LEVELS).
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value (int type).		
		*/  
      int                     Levels      (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_LEVELS));}	
		
		/*!	
			Color of level OBJPROP_LEVELCOLOR.
			\param  long aChartID - identifier of the chart,
         \param   int aIndex - index of level (from 0).
         \param  string aName - name of the graphical object. 			         
		 	\return  Value of the color (color type).		
		*/ 
      color                   LevelColor  (long aChartID,string aName,int aIndex)  {return( (color)                    ObjectGetInteger(aChartID,aName,OBJPROP_LEVELCOLOR,aIndex));}		
		
		/*!	
			Style of level OBJPROP_LEVELSTYLE.
			\param  long aChartID - identifier of the chart,
         \param   int aIndex - index of level (from 0).
         \param  string aName - name of the graphical object. 			         
		 	\return  Value of style (ENUM_LINE_STYLE type).		
		*/  
      ENUM_LINE_STYLE         LevelStyle  (long aChartID,string aName,int aIndex)  {return( (ENUM_LINE_STYLE)          ObjectGetInteger(aChartID,aName,OBJPROP_LEVELSTYLE,aIndex));}	
		
		/*!	
			Width of level OBJPROP_LEVELWIDTH.
			\param  long aChartID - identifier of the chart,
         \param   int aIndex - index of level (from 0).
         \param  string aName - name of the graphical object. 			         
		 	\return  Value of width (int type).		
		*/  
      int                     LevelWidth  (long aChartID,string aName,int aIndex)  {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_LEVELWIDTH,aIndex));}		
		
		/*!	
			Font size OBJPROP_FONTSIZE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value of size (int type).		
		*/  
      int                     FontSize    (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_FONTSIZE));}		   
		
		/*!	
			Ray left OBJPROP_RAY_LEFT.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  bool type. True - there is a ray left, false - no ray.		
		*/  
      bool                    RayLeft     (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_RAY_LEFT));} 	
		
		/*!	
			Ray right OBJPROP_RAY_RIGHT.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  bool type. True - there is a ray left, false - no ray.		
		*/ 
      bool                    RayRight    (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_RAY_RIGHT));} 		
		
		/*!	
			The vertical line is drawn through all windows of a chart OBJPROP_RAY.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  bool type. True - goes through all windows of a chart, false - drawn in one subwindow.		
		*/  
      bool                    Ray         (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_RAY));} 		
		
		/*!	
			Displaying of the entire ellipse of the "Fibo arcs" object OBJPROP_ELLIPSE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - entire ellipse, false - arcs.		
		*/ 
      bool                    Ellipse     (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_ELLIPSE));} 			   
		
		/*!	
			An arrow code for the "Arrow" object OBJPROP_ARROWCODE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  An arrow code (char type).
		*/ 
      char                    ArrowCode   (long aChartID,string aName)             {return( (char)                     ObjectGetInteger(aChartID,aName,OBJPROP_ARROWCODE));}
		
		/*!	
			Visibility of an object on timeframes OBJPROP_TIMEFRAMES.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Flags of visibility (long type).
		*/ 
      long                    TimeFrames  (long aChartID,string aName)             {return(                            ObjectGetInteger(aChartID,aName,OBJPROP_TIMEFRAMES));}
		
		/*!	
			Position of the anchor point OBJPROP_ANCHOR.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value of the anchor point (long type). For OBJ_ARROW it is one of the ENUM_ARROW_ANCHOR values, for OBJ_LABEL and OBJ_TEXT - one of the ENUM_ANCHORPOINT values.
		*/ 
      long                    Anchor      (long aChartID,string aName)             {return(                            ObjectGetInteger(aChartID,aName,OBJPROP_ANCHOR));}
		
		/*!	
			Distance along the X axis from the binding corner in pixels OBJPROP_XDISTANCE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value (int type).
		*/ 
      int                     XDistance   (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_XDISTANCE));}	
		
		/*!	
			Distance along the Y axis from the binding corner in pixels OBJPROP_YDISTANCE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value (int type).
		*/  
      int                     YDistanse   (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_YDISTANCE));}	
		
		/*!	
			Trend of a Gann object OBJPROP_DIRECTION.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value (ENUM_GANN_DIRECTION type).
		*/   
      ENUM_GANN_DIRECTION     Direction   (long aChartID,string aName)             {return( (ENUM_GANN_DIRECTION)      ObjectGetInteger(aChartID,aName,OBJPROP_DIRECTION));}
		
		/*!	
			Level of Elliott wave marking OBJPROP_DEGREE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value (ENUM_ELLIOT_WAVE_DEGREE value).
		*/ 
      ENUM_ELLIOT_WAVE_DEGREE Degree      (long aChartID,string aName)             {return( (ENUM_ELLIOT_WAVE_DEGREE)  ObjectGetInteger(aChartID,aName,OBJPROP_DEGREE));}
		
		/*!	
			Displaying of lines of Elliott marking OBJPROP_DRAWLINES.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - enabled, false - disabled.		
		*/  
      bool                    DrawLines   (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_DRAWLINES));} 
		
		/*!	
			Button state (Pressed/Unpressed) OBJPROP_STATE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - pressed, false - unpressed.
		*/ 
      bool                    State       (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_STATE));} 
		
		/*!	
			Identifier of the "Chart" object OBJPROP_CHART_ID.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Identifier value (long type).
		*/ 
      long                    ChartChartID(long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_CHART_ID));}
		
		/*!	
			Horizontal size of the object OBJPROP_XSIZE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value of size (int type).
		*/   
      int                     XSize       (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_XSIZE));}	
		
		/*!	
			Vertical size of the object OBJPROP_YSIZE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value of size (int type).
		*/ 
      int                     YSize       (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_YSIZE));}		
		
		/*!	
			The X coordinate of the beginning of the visible area of the object OBJPROP_XOFFSET.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value (int type).
		*/ 
      int                     XOffset     (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_XOFFSET));}	
		
		/*!	
			The Y coordinate of the beginning of the visibility area of the object OBJPROP_YOFFSET.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value (int type).
		*/ 
      int                     YOffset     (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_YOFFSET));}	
		
		/*!	
			Timeframe of the "Chart" object OBJPROP_PERIOD.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value (ENUM_TIMEFRAMES type).
		*/ 
      ENUM_TIMEFRAMES         Period      (long aChartID,string aName)             {return( (ENUM_TIMEFRAMES)          ObjectGetInteger(aChartID,aName,OBJPROP_PERIOD));}
		
		/*!	
			Flag of displaying of the time scale for the "Chart" object OBJPROP_DATE_SCALE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - the scale is shown, false - the scale is hidden.
		*/ 
      bool                    DateScale   (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_DATE_SCALE));} 
		
		/*!	
			Flag of displaying of the price scale for the "Chart" object OBJPROP_PRICE_SCALE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  bool type. True - the scale is shown, false - the scale is hidden.
		*/  
      bool                    PriceScale  (long aChartID,string aName)             {return( (bool)                     ObjectGetInteger(aChartID,aName,OBJPROP_PRICE_SCALE));} 
		
		/*!	
			Scale for the "Chart" OBJPROP_CHART_SCALE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
      	\return  Value 1-5 (int type).
		*/  
      int                     ChartScale  (long aChartID,string aName)             {return( (int)                      ObjectGetInteger(aChartID,aName,OBJPROP_CHART_SCALE));}		
		
		/*!	
			Background color OBJPROP_BGCOLOR.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value of the color (color type).		
		*/  
      color                   BgColor     (long aChartID,string aName)             {return( (color)                    ObjectGetInteger(aChartID,aName,OBJPROP_BGCOLOR));}
		
		/*!	
			Chart corner for binding the graphical object OBJPROP_CORNER.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value (ENUM_BASE_CORNER type).
		*/  
      ENUM_BASE_CORNER        Corner      (long aChartID,string aName)             {return( (ENUM_BASE_CORNER)         ObjectGetInteger(aChartID,aName,OBJPROP_CORNER));}
		
		/*!	
			Border type for the "Rectangle label" object OBJPROP_BORDER_TYPE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value (ENUM_BORDER_TYPE type).
		*/   
      ENUM_BORDER_TYPE        BorderType  (long aChartID,string aName)             {return( (ENUM_BORDER_TYPE)         ObjectGetInteger(aChartID,aName,OBJPROP_BORDER_TYPE));}
		
		/*!	
			Price coordinate OBJPROP_PRICE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object,			
         \param   int aIndex - point number (from zero).
		 	\return  Value (double type).
		*/ 
      double                  Price       (long aChartID,string aName,int aIndex)  {return(                            ObjectGetDouble(aChartID,aName,OBJPROP_PRICE,aIndex));} 
		
		/*!	
			Level value OBJPROP_LEVELVALUE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object,			
         \param   int aIndex - index of level (from 0).
		 	\return  Value (double type).
		*/ 
      double                  LevelValue  (long aChartID,string aName,int aIndex)  {return(                            ObjectGetDouble(aChartID,aName,OBJPROP_LEVELVALUE,aIndex));}  
		
		/*!	
			Scale (property of the Gann objects and Fibo arcs) OBJPROP_SCALE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value (double type).
		*/ 
      double                  Scale       (long aChartID,string aName)             {return(                            ObjectGetDouble(aChartID,aName,OBJPROP_SCALE));}
		
		/*!	
			Угол OBJPROP_ANGLE.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value (double type).
		*/ 
      double                  Angle       (long aChartID,string aName)             {return(                            ObjectGetDouble(aChartID,aName,OBJPROP_ANGLE));}
		
		/*!	
			Deviation of the standard deviation channel OBJPROP_DEVIATION.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Value (double type).
		*/ 
      double                  Deviation   (long aChartID,string aName)             {return(                            ObjectGetDouble(aChartID,aName,OBJPROP_DEVIATION));}
		
		/*!	
			Text of the object OBJPROP_TEXT.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Text.
		*/  
      string                  Text        (long aChartID,string aName)             {return(                            ObjectGetString(aChartID,aName,OBJPROP_TEXT));}
		
		/*!	
			Text of the tooltip. OBJPROP_TOOLTIP.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Text.
		 	\remark To disable the tooltip, set the value "\n".
		*/  
      string                  ToolTip     (long aChartID,string aName)             {return(                            ObjectGetString(aChartID,aName,OBJPROP_TOOLTIP));}
		
		/*!	
			Level description. OBJPROP_LEVELTEXT.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object,		
         \param   int aIndex - index of level (from 0).			
		 	\return  Text.
		*/ 
      string                  LevelText   (long aChartID,string aName,int aIndex)  {return(                            ObjectGetString(aChartID,aName,OBJPROP_LEVELTEXT,aIndex));} 
		
		/*!	
			Font name. OBJPROP_FONT.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Name (string type).
		*/   
      string                  Font        (long aChartID,string aName)             {return(                            ObjectGetString(aChartID,aName,OBJPROP_FONT));}
		
		/*!	
			Name of a bitmap file for the "On" state OBJPROP_BMPFILE, modifier 0.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  File name (string type).
		*/  
      string                  BmpFileOn   (long aChartID,string aName)             {return(                            ObjectGetString(aChartID,aName,OBJPROP_BMPFILE,0));}
		
		/*!	
			Name of a bitmap file for the "Off" state OBJPROP_BMPFILE, modifier 1.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  File name (string type).
		*/  
      string                  BmpFileOff  (long aChartID,string aName)             {return(                            ObjectGetString(aChartID,aName,OBJPROP_BMPFILE,1));}       
		
		/*!	
			Symbol for the "Chart" object OBJPROP_SYMBOL.
			\param  long aChartID - identifier of the chart,
         \param  string aName - name of the graphical object. 						
		 	\return  Symbol (string type).
		*/  
      string                  Symbol      (long aChartID,string aName)             {return(                            ObjectGetString(aChartID,aName,OBJPROP_SYMBOL));}  
      
      //+------------------------------------------------------------------+
      //|   Setting properties by chart identifier and object name         |
      //+------------------------------------------------------------------+     

		/*!	
			Setting the color OBJPROP_COLOR.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		color aValue - color value.			
		*/  
      void SetColor        (long aChartID,string aName,color aValue)                        {ObjectSetInteger(aChartID,aName,OBJPROP_COLOR,           aValue);}
		/*!	
			Setting the style OBJPROP_STYLE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		ENUM_LINE_STYLE aValue - style value.			
		*/
      void SetStyle        (long aChartID,string aName,ENUM_LINE_STYLE aValue)              {ObjectSetInteger(aChartID,aName,OBJPROP_STYLE,           aValue);}
		
		/*!	
			Setting the width OBJPROP_WIDTH.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		int aValue - width value.			
		*/ 
      void SetWidth        (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_WIDTH,           aValue);} 
		
		/*!	
			Setting location on the foreground/background OBJPROP_BACK.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (foreground/background).
		*/ 
      void SetBack         (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_BACK,            aValue);} 	
		
		/*!	
			Enabling the filling OBJPROP_FILL.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (filling/outline).
		*/ 
      void SetFill         (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_FILL,            aValue);} 		
		
		/*!	
			Enabling selection OBJPROP_SELECTED.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (selected/not selected).
		*/ 
      void SetSelected     (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_SELECTED,        aValue);} 		
		
		/*!	
			Enabling the possibility of editing a text in the "Edit" object OBJPROP_READONLY.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (enabled/disabled).
		*/  
      void SetReadOnly     (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_READONLY,        aValue);} 		
		
		/*!	
			Setting time of one of the anchor points OBJPROP_TIME.
			\param   long aChartID - identifier of the chart,
         \param   int aIndex - number of point (from zero),
         \param   string aName - name of the graphical object,
         \param   datetime aValue - time value.
		*/    
      void SetTime         (long aChartID,string aName,int aIndex,datetime aValue)          {ObjectSetInteger(aChartID,aName,OBJPROP_TIME,            aIndex,aValue);}	
		
		/*!	
			Enabling the possibility of selection of the object OBJPROP_SELECTABLE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		bool aValue - true/false (enabled/disabled).
		*/ 
      void SetSelectable   (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_SELECTABLE,      aValue);} 		
		
		/*!	
			Setting the number of levels OBJPROP_LEVELS.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param		int aValue - number of levels.
		*/  
      void SetLevels       (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_LEVELS,          aValue);}	
		
		/*!	
			Setting the color of level OBJPROP_LEVELCOLOR.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
         \param   color aValue - color value.
		*/ 
      void SetLevelColor   (long aChartID,string aName,int aIndex,color aValue)             {ObjectSetInteger(aChartID,aName,OBJPROP_LEVELCOLOR,      aIndex,aValue);}		
		
		/*!	
			Setting the style of level OBJPROP_LEVELSTYLE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
         \param   ENUM_LINE_STYLE aValue - style of value.
		*/  
      void SetLevelStyle   (long aChartID,string aName,int aIndex,ENUM_LINE_STYLE aValue)   {ObjectSetInteger(aChartID,aName,OBJPROP_LEVELSTYLE,      aIndex,aValue);}
		
		/*!	
			Setting the width of level OBJPROP_LEVELWIDTH.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
         \param   int aValue - width value.
		*/  
      void SetLevelWidth   (long aChartID,string aName,int aIndex,int aValue)               {ObjectSetInteger(aChartID,aName,OBJPROP_LEVELWIDTH,      aIndex,aValue);}		
		
		/*!	
			Setting the font size OBJPROP_FONTSIZE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aValue - size value.
		*/  
      void SetFontSize     (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_FONTSIZE,        aValue);}		   
		
		/*!	
			Enabling ray left OBJPROP_RAY_LEFT.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/   
      void SetRayLeft      (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_RAY_LEFT,        aValue);} 	
		
		/*!	
			Enabling ray right OBJPROP_RAY_RIGHT.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/  
      void SetRayRight     (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_RAY_RIGHT,       aValue);} 		
		
		/*!	
			Enabling drawing of a vertical line through all subwindows OBJPROP_RAY.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/ 
      void SetRay          (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_RAY,             aValue);} 		
		
		/*!	
			Enable displaying of the entire ellipse for the Fibo arcs OBJPROP_ELLIPSE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (ellipse/arcs).
		*/ 
      void SetEllipse      (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_ELLIPSE,         aValue);} 			   
		
		/*!	
			Setting the arrow code OBJPROP_ARROWCODE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   char aValue - arrow code.
		*/ 
      void SetArrowCode    (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_ARROWCODE,       aValue);}
		
		/*!	
			Setting the visibility of the object on timeframes OBJPROP_TIMEFRAMES.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   long aValue - combination of flags.
		*/   
      void SetTimeFrames   (long aChartID,string aName,long aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_TIMEFRAMES,      aValue);}
		
		/*!	
			Setting an anchor pointer OBJPROP_ANCHOR.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   long aValue - anchor point (ENUM_ARROW_ANCHOR or ENUM_ANCHORPOINT).
		*/   
      void SetAnchor       (long aChartID,string aName,long aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_ANCHOR,          aValue);}
		
		/*!	
			Setting the distance along the X axis from the binding corner OBJPROP_XDISTANCE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aValue - distance value.
		*/   
      void SetXDistance    (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_XDISTANCE,       aValue);}	
		
		/*!	
			Setting the distance along the Y axis from the binding corner OBJPROP_YDISTANCE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aValue - distance value.
		*/ 
      void SetYDistanse    (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_YDISTANCE,       aValue);}	
		
		/*!	
			Setting a trend for a Gann object OBJPROP_DIRECTION.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   ENUM_GANN_DIRECTION aValue - trend value.
		*/ 
      void SetDirection    (long aChartID,string aName,ENUM_GANN_DIRECTION aValue)          {ObjectSetInteger(aChartID,aName,OBJPROP_DIRECTION,       aValue);}
		
		/*!	
			Setting the level of Elliott wave marking OBJPROP_DEGREE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   ENUM_ELLIOT_WAVE_DEGREE aValue - level value.
		*/ 
      void SetDegree       (long aChartID,string aName,ENUM_ELLIOT_WAVE_DEGREE aValue)      {ObjectSetInteger(aChartID,aName,OBJPROP_DEGREE,          aValue);}
		
		/*!	
			Displaying of lines of Elliott wave marking OBJPROP_DRAWLINES.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/ 
      void SetDrawLines    (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_DRAWLINES,       aValue);} 
		
		/*!	
			Setting the state of button.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (pressed/unpressed).
		*/ 
      void SetState        (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_STATE,           aValue);} 
		
		/*!	
			Setting the horizontal size OBJPROP_XSIZE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aValue - size value.
		*/ 
      void SetXSize        (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_XSIZE,           aValue);}	
		
		/*!	
			Setting the vertical size OBJPROP_YSIZE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aValue - size value.
		*/  
      void SetYSize        (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_YSIZE,           aValue);}		
		
		/*!	
			Setting the X coordinate of the beginning of the visibility area OBJPROP_XOFFSET.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aValue - value of coordinate.
		*/ 
      void SetXOffset      (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_XOFFSET,         aValue);}	
		
		/*!	
			Setting the Y coordinate of the beginning of the visibility area OBJPROP_YOFFSET.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aValue - value of coordinate.
		*/ 
      void SetYOffset      (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_YOFFSET,         aValue);}	
		
		/*!	
			Setting a timeframe for the "Chart" object OBJPROP_PERIOD.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   ENUM_TIMEFRAMES aValue - timeframe value.
		*/ 
      void SetPeriod       (long aChartID,string aName,ENUM_TIMEFRAMES aValue)              {ObjectSetInteger(aChartID,aName,OBJPROP_PERIOD,          aValue);}
		
		/*!	
			Enabling/disabling the visibility of the time scale for the "Chart" object OBJPROP_DATE_SCALE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/ 
      void SetDateScale    (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_DATE_SCALE,      aValue);} 

		/*!	
			Enabling disabling the visibility of the price scale for the "Chart" object OBJPROP_PRICE_SCALE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   bool aValue - true/false (enabled/disabled).
		*/ 
      void SetPriceScale   (long aChartID,string aName,bool aValue)                         {ObjectSetInteger(aChartID,aName,OBJPROP_PRICE_SCALE,     aValue);} 

		/*!	
			Setting a scale for the "Chart" object OBJPROP_CHART_SCALE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aValue - value 1-5.
		*/  
      void SetChartScale   (long aChartID,string aName,int aValue)                          {ObjectSetInteger(aChartID,aName,OBJPROP_CHART_SCALE,     aValue);}		

		/*!	
			Setting a background color OBJPROP_BGCOLOR.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   color aValue - color value.
		*/    
      void SetBgColor      (long aChartID,string aName,color aValue)                        {ObjectSetInteger(aChartID,aName,OBJPROP_BGCOLOR,         aValue);}

		/*!	
			Setting a chart corner for binding OBJPROP_CORNER.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   ENUM_BASE_CORNER aValue - chart corner.
		*/  
      void SetCorner       (long aChartID,string aName,ENUM_BASE_CORNER aValue)             {ObjectSetInteger(aChartID,aName,OBJPROP_CORNER,          aValue);}

		/*!	
			Setting type of border for the "Rectangle label" object OBJPROP_BORDER_TYPE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   ENUM_BORDER_TYPE aValue - border type.
		*/  
      void SetBorderType   (long aChartID,string aName,ENUM_BORDER_TYPE aValue)             {ObjectSetInteger(aChartID,aName,OBJPROP_BORDER_TYPE,     aValue);}      

		/*!	
			Setting price value OBJPROP_PRICE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of point (from zero),
		 	\param  double aValue - value.
		*/  
      void SetPrice        (long aChartID,string aName,int aIndex,double aValue)            {ObjectSetDouble(aChartID,aName,OBJPROP_PRICE,            aIndex,aValue);} 

		/*!	
			Setting a level value OBJPROP_LEVELVALUE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
		 	\param  double aValue - value.
		*/  
      void SetLevelValue   (long aChartID,string aName,int aIndex,double aValue)            {ObjectSetDouble(aChartID,aName,OBJPROP_LEVELVALUE,       aIndex,aValue);}  

		/*!	
			Setting a scale (property of the Gann objects and Fibo arcs) OBJPROP_SCALE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  double aValue - value of scale.
		*/ 
      void SetScale        (long aChartID,string aName,double aValue)                       {ObjectSetDouble(aChartID,aName,OBJPROP_SCALE,            aValue);}     

		/*!	
			Setting an angle OBJPROP_ANGLE.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  double aValue - value of angle OBJPROP_ANGLE.
		*/   
      void SetAngle        (long aChartID,string aName,double aValue)                       {ObjectSetDouble(aChartID,aName,OBJPROP_ANGLE,            aValue);}

		/*!	
			Setting a width of the standard deviation channel OBJPROP_DEVIATION.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  double aValue - value of width (number of standard deviations).
		*/ 
      void SetDeviation    (long aChartID,string aName,double aValue)                       {ObjectSetDouble(aChartID,aName,OBJPROP_DEVIATION,        aValue);}

		/*!	
			Setting a text OBJPROP_TEXT.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  string aValue - text.
		*/ 
      void SetText         (long aChartID,string aName,string aValue)                       {ObjectSetString(aChartID,aName,OBJPROP_TEXT,             aValue);}

		/*!	
			Setting a tooltip OBJPROP_TOOLTIP.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  string aValue - text.
		 	\remark To disable the tooltip, set the value "\n".		 	
		*/
      void SetToolTip      (long aChartID,string aName,string aValue)                       {ObjectSetString(aChartID,aName,OBJPROP_TOOLTIP,          aValue);}

		/*!	
			Setting a description of level OBJPROP_LEVELTEXT.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
         \param   int aIndex - number of level (from zero),
		 	\param  string aValue - text. 	
		*/  
      void SetLevelText    (long aChartID,string aName,int aIndex,string aValue)            {ObjectSetString(aChartID,aName,OBJPROP_LEVELTEXT,        aIndex,aValue);} 

		/*!	
			Setting a font type OBJPROP_FONT.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  string aValue - font name. 	
		*/ 
      void SetFont         (long aChartID,string aName,string aValue)                       {ObjectSetString(aChartID,aName,OBJPROP_FONT,             aValue);} 

		/*!	
			Setting a bitmap file for the "On" state OBJPROP_BMPFILE, modifier 0.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  string aValue - file name. 	
		*/  
      void SetBmpFileOn    (long aChartID,string aName,string aValue)                       {ObjectSetString(aChartID,aName,OBJPROP_BMPFILE,          0,aValue);}       

		/*!	
			Setting bitmap file for the "Off" state OBJPROP_BMPFILE, modifier 1.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  string aValue - file name. 	
		*/  
      void SetBmpFileOff   (long aChartID,string aName,string aValue)                       {ObjectSetString(aChartID,aName,OBJPROP_BMPFILE,          1,aValue);}       

		/*!	
			Setting a symbol for the "Chart" object OBJPROP_SYMBOL.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
		 	\param  string aValue - symbol. 	
		*/  
      void SetSymbol       (long aChartID,string aName,string aValue)                       {ObjectSetString(aChartID,aName,OBJPROP_SYMBOL,           aValue);}  

      //+------------------------------------------------------------------+
      //|   Other methods                                                  |
      //+------------------------------------------------------------------+         

      // === Deletion ===

		/*!	
			Deletion of an attached object.
		*/ 
      void Delete(){ObjectDelete(m_id,m_name);} 
		
		/*!	
			Deletion of an object by name.
			\param  string aName - name of the graphical object.
		*/       
      void Delete(string aName){ObjectDelete(0,aName);} 
		
		/*!	
			Deletion of an object by name and chart identifier.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object.
		*/       
      void Delete(long aChartID,string aName){ObjectDelete(aChartID,aName);} 

      // === Moving ===

		/*!	
			Moving an attached object.
			\param   int aIndex - number of point (from zero),
			\param   datetime aTime  - time value,
			\param   double aPrice - value along vertical axis.
		*/ 
      void Move(int aIndex,datetime aTime,double aPrice){
         ObjectMove(m_id,m_name,aIndex,aTime,aPrice);   
      }
      
		/*!	
			Moving an object by name.
			\param  string aName - name of the graphical object,
			\param   int aIndex - number of point (from zero),
			\param   datetime aTime  - time value,
			\param   double aPrice - value along vertical axis.			
		*/         
      void Move(string aName,int aIndex,datetime aTime,double aPrice){
         ObjectMove(0,aName,aIndex,aTime,aPrice);   
      }    
      
		/*!	
			Moving an object by name and chart identifier.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,
			\param   int aIndex - number of point (from zero),
			\param   datetime aTime  - time value,
			\param   double aPrice - value along vertical axis.			
		*/           
      void Move(long aChartID,string aName,int aIndex,datetime aTime,double aPrice){
         ObjectMove(aChartID,aName,aIndex,aTime,aPrice);   
      }
      
      // === Search ===
           
		/*!	
			Search of an attached object.
			\return  Number of subwindow, -1 if the object doesn't exist (int type). 
		*/ 
      int Find(){
         return(ObjectFind(m_id,m_name));
      }  
      
		/*!	
			Search of an object by name.
			\param  string aName - name of the graphical object.
			\return  Number of subwindow, -1 if the object doesn't exist (int type). 
		*/              
      int Find(string aName){
         return(ObjectFind(0,aName));
      }    
      
		/*!	
			Search of an object by name and chart identifier.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object.
			\return  Number of subwindow, -1 if the object doesn't exist (int type). 
		*/         
      int Find(long aChartID,string aName){
         return(ObjectFind(aChartID,aName));
      }   
      
      // === Getting time by value ===
      
		/*!	
			Getting time by value for an attached object.
			\param  double aValue - value,
			\param  int aLineID - number of line (from zero).
			\return  time (datetime time). 
		*/ 
      datetime GetTimeByValue(double aValue,int aLineID=0){
         return(ObjectGetTimeByValue(m_id,m_name,aValue,aLineID));
      }         
      
		/*!	
			Getting time by value and object name.
			\param  string aName - name of the graphical object,
			\param  double aValue - value,
			\param  int aLineID - number of line (from zero).
			\return  time (datetime time). 
		*/       
      datetime GetTimeByValue(string aName,double aValue,int aLineID=0){
         return(ObjectGetTimeByValue(0,aName,aValue,aLineID));
      }    

		/*!	
			Getting time by value, chart identifier and object name.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,			
			\param  double aValue - value,
			\param  int aLineID - number of line (from zero).
			\return  time (datetime time). 
		*/ 	      
      datetime GetTimeByValue(long aChartID,string aName,double aValue,int aLineID=0){
         return(ObjectGetTimeByValue(aChartID,aName,aValue,aLineID));
      }   

      // === Getting value by time ===
      
		/*!	
			Getting value by time for an attached object.
			\param  datetime aTime - time,
			\param  int aLineID - number of line (from zero).
			\return Value (double type). 
		*/ 
      double GetValueByTime(datetime aTime,int aLineID=0){
         return(ObjectGetValueByTime(m_id,m_name,aTime,aLineID));
      }   
      
		/*!	
			Getting value by time and name.
			\param  string aName - name of the graphical object,	
			\param  datetime aTime - time,
			\param  int aLineID - number of line (from zero).
			\return Value (double type). 
		*/             
      double GetValueByTime(string aName,datetime aTime,int aLineID=0){
         return(ObjectGetValueByTime(0,aName,aTime,aLineID));
      }
          
		/*!	
			Getting value by time, chart identifier and object name.
			\param  long aChartID - identifier of the chart,
			\param  string aName - name of the graphical object,	
			\param  datetime aTime - time,
			\param  int aLineID - number of line (from zero).
			\return Value (double type). 
		*/         
      double GetValueByTime(long aChartID,string aName,datetime aTime,int aLineID=0){
         return(ObjectGetValueByTime(aChartID,aName,aTime,aLineID));
      } 
      

      // === === === === ===
   
      /*!
         Total number of graphical objects.   
         \param   aChartID=0 - chart identifier,
         \param   int aSubWindow=-1 - subwindow number,
         \param   int aType=-1 - object type.
      */      
      int Total(int aChartID=0,int aSubWindow=-1,int aType=-1){
         return(ObjectsTotal(aChartID,aSubWindow,aType));
      }   
      
      /*!
         Redrawing chart to which an object is attached.   
      */ 
      void Redraw(){
         ChartRedraw(m_id);
      }  
      /*!
         Redrawing of a specified chart.  
         \param long aChartID - chart identifier. 
      */              
      void Redraw(long aChartID=0){
         ChartRedraw(aChartID);
      }         
                 
};

CGraphicObjectShell g;

//+------------------------------------------------------------------+
//|                                                                  |
//|         The CWorkPiece class                                     |
//|                                                                  |
//+------------------------------------------------------------------+

/*!
	\brief   Quick creation of graphical objects with properties specified in parameters.
	
	\details The class contains methods for quick creation of graphical objects with specified
	         properties using a single line of code. Properties of a created graphical object 
	         are specified as parameters when calling the methods of creation.

   \remark	The class is already declared with the name "w".
*/   

class CWorkPiece{
   public:
		/*!	
			Rectangle label.
            \param		string aName="Canvas" - name,
            \param		int aSubWindow=0 - subwindow,
            \param		int aLeft=100 - position relatively to the left side of the chart,
            \param		int aTop=100 - position relatively to the upper side of the chart,
            \param		int aWidth=300 - width,
            \param		int aHeight=150 - height,
            \param		color aColorBg=clrIvory - background color,
            \param		int aColorBorder=clrDimGray - border color.
            \remark	   Anchor point - upper left corner.
		*/
      void Canvas(string aName="Canvas",int aSubWindow=0,int aLeft=100,int aTop=100,int aWidth=300,int aHeight=150,color aColorBg=clrIvory,int aColorBorder=clrDimGray){
         g.CreateRectangleLabel(aName,aSubWindow); // Creation of the rectangle label
         g.SetXDistance(aLeft); // Setting the X coordinate
         g.SetYDistanse(aTop); // Setting the Y coordinate
         g.SetXSize(aWidth); // Setting width
         g.SetYSize(aHeight); // Setting height
         g.SetBgColor(aColorBg); // Setting background color
         g.SetColor(aColorBorder); // Setting border color
         g.SetCorner(CORNER_LEFT_UPPER); // Setting anchor point
         g.SetBorderType(BORDER_FLAT); // Setting border type
         g.SetTimeFrames(OBJ_ALL_PERIODS); // Setting visibility on timeframes
         g.SetSelected(false); // Disabling selection
         g.SetSelectable(false); // Disabling the possibility of selection
         g.SetWidth(1); // Setting border width
         g.SetStyle(STYLE_SOLID); // Setting border style
      }
      
		/*!	
			Надпись.
            \param		string aName="Label" - name,
            \param		int aSubWindow=0 - subwindow,
            \param		int aLeft=100 - position relatively to the left side of the chart,
            \param      int aTop=100 - position relatively to the upper side of the chart,
            \param      string aText="Label" - text,
            \param      int aColor=clrDimGray - color,
            \param      int aFontSize=8 - font size,
            \param      string aFont="Arial" - font.
            \remark	   Anchor point - upper left corner.
		*/
      void Label(string aName="Label",int aSubWindow=0,int aLeft=100,int aTop=100,string aText="Label",int aColor=clrDimGray,int aFontSize=8,string aFont="Arial"){
         g.CreateLabel(aName,aSubWindow);
         g.SetXDistance(aLeft);
         g.SetYDistanse(aTop);
         g.SetText(aText);
         g.SetColor(aColor);
         g.SetFontSize(aFontSize);
         g.SetFont(aFont);
         g.SetCorner(CORNER_LEFT_UPPER);
         g.SetAnchor(ANCHOR_LEFT_UPPER);         
         g.SetSelected(false);
         g.SetSelectable(false);
      }  
      
		/*!	
			Кнопка.
            \param		string aName="Button" - name,
            \param		int aSubWindow=0 - subwindow,
            \param		int aLeft=100 - position relatively to the left side of the chart,
            \param		int aTop=100 - position relatively to the upper side of the chart,
            \param		int aWidth=40 - width,
            \param		int aHeight=15 - height,
            \param		string aText="Button" - text of label,
            \param		color aColorBg=clrSilver - color of button,
            \param		color aColorText=clrBlack - color of label,
            \param		int aFontSize=7 - font size for label,
            label\param		string aFont="Arial" - font of caption.
            \remark	   Anchor point - upper left corner.
 		*/
      void Button(string aName="Button",int aSubWindow=0,int aLeft=100,int aTop=100,int aWidth=40,int aHeight=15,string aText="Button",color aColorBg=clrSilver,color aColorText=clrBlack,int aFontSize=7,string aFont="Arial"){
         g.CreateButton(aName,aSubWindow);
         g.SetXDistance(aLeft);
         g.SetYDistanse(aTop);
         g.SetXSize(aWidth);
         g.SetYSize(aHeight);
         g.SetText(aText);
         g.SetColor(aColorText);
         g.SetBgColor(aColorBg);
         g.SetFontSize(aFontSize);
         g.SetFont(aFont);
         g.SetCorner(CORNER_LEFT_UPPER);
         g.SetSelected(false);
         g.SetSelectable(false);
      } 
      
		/*!	
			Text field.
            \param		string aName="Edit" - name,
            \param		int aSubWindow=0 - subwindow,
            \param		int aLeft=100 - position relatively to the left side of the chart,
            \param		int aTop=100 - position relatively to the upper side of the chart,
            \param		int aWidth=40 - width,
            \param		int aHeight=15 - height,
            \param		string aText="Edit" - text,
            \param		color aColorBg=clrSnow - background color,
            \param		color aColorText=clrDimGray - color of text and border,
            \param		int aFontSize=7 - font size,
            \param		string aFont="Arial" - font.			
            \remark	   Anchor point - upper left corner.
 		*/
      void Edit(string aName="Edit",int aSubWindow=0,int aLeft=100,int aTop=100,int aWidth=40,int aHeight=15,string aText="Edit",color aColorBg=clrSnow,color aColorText=clrDimGray,int aFontSize=7,string aFont="Arial"){
         g.CreateEdit(aName,aSubWindow);
         g.SetXDistance(aLeft);
         g.SetYDistanse(aTop);
         g.SetXSize(aWidth);
         g.SetYSize(aHeight);
         g.SetText(aText);
         g.SetColor(aColorText);
         g.SetBgColor(aColorBg);
         g.SetFontSize(aFontSize);
         g.SetFont(aFont);
         g.SetCorner(CORNER_LEFT_UPPER);
         g.SetSelected(false);
         g.SetSelectable(false);
         g.SetReadOnly(false);
      } 
      
		/*!	
			The frame with inscription.
            \param		string aName="Frame" - name,
            \param		int aSubWindow=0 - subwindow,
            \param		int aLeft=100 - position relatively to the left side of the chart,
            \param		int aTop=100 - position relatively to the upper side of the chart,
            \param		int aWidth=50 - width,
            \param		int aHeight=50 - height,
            \param		string aCaption="Frame" - text of label,
            \param		int aCaptionWidth=31 - width of space for label,
            \param		color aColorBg=clrIvory - background color,
            \param		color aColorBorder=clrDimGray - border color,
            \param		color aColorCaption=clrDimGray - color of label.
            \remark	   Anchor point - upper left corner.
            \remark	   The frame consist of graphical objects:  OBJ_RECTANGLE_LABEL (2 items) and 
                        OBJ_LABEL. One rectangle label is basic and the other one covers the frame 
                        below the caption. The frame can be created without a caption, if the aCaption parameter 
                        is set to ""; in this case the frame consists of one rectangle label. 
                        Names of all graphical object start with the text aName. To form 
                        a name for the main rectangle label "_Frame" is added to aName, 
                        for the caption "_FrameL" is added, for the label that covers the frame under the caption "_FrameC" is added. 
 		*/
      void Frame(string aName="Frame",int aSubWindow=0,int aLeft=100,int aTop=100,int aWidth=50,int aHeight=50,string aCaption="Frame",int aCaptionWidth=31,color aColorBg=clrIvory,color aColorBorder=clrDimGray,color aColorCaption=clrDimGray){
         Canvas(aName+"_Frame",0,aLeft,aTop,aWidth,aHeight,aColorBg,aColorBorder);
            if(aCaption!=""){
               Canvas(aName+"_FrameC",aSubWindow,aLeft+4,aTop+2,aCaptionWidth,1,aColorBg,aColorBg);
               Label(aName+"_FrameL",aSubWindow,aLeft+6,aTop-5,aCaption,aColorCaption,7,"Arial");
            }               
      }
      
		/*!	
			Deletion of the frame with label.
         \param   string aName="Frame" - name.
 		*/
      void FrameDelete(string aName="Frame"){
         ObjectDelete(0,aName+"_Frame");
         ObjectDelete(0,aName+"_FrameC");
         ObjectDelete(0,aName+"_FrameL");         
      }  
           
		/*!	
			Deletion of a graphical object by name on its "own" chart.
         \param   string aName="Frame" - name.
 		*/
      void Delete(string aName){
         ObjectDelete(0,aName);
      }   
         
		/*!	
			Redrawing of the "own" chart.
 		*/
      void Redraw(){
         ChartRedraw(0);
      }         
};

CWorkPiece w;

//+------------------------------------------------------------------+
//|                                                                  |
//|         The CColorSchemes class                                  |
//|                                                                  |
//+------------------------------------------------------------------+

/*!
	\brief   The set of color schemes.
	
	\details The class is intended for getting a color from the current color scheme by
	         its index.

   \remark	The class is already declared in the file with the "ClrScheme" name.
*/   


class CColorSchemes{
   private:
      int m_ShemeIndex;
   public:
   		/*!	
   			Selecting a color scheme.
               \param		int aShemeIndex - index of a color scheme.
   		*/
         void SetScheme(int aShemeIndex){ // Setting index of the color scheme
            m_ShemeIndex=aShemeIndex;
         }
   		/*!	
   			Getting color by its index.
               \param		int aColorIndex - index of a color in the scheme.
               \return		Color value.
   		*/         
         color Color(int aColorIndex){
            color m_Color[3][4];  // The first dimension is the number of color schemes, the second one is the number of a color in the scheme
            // default
            m_Color[0][0]=clrSnow;
            m_Color[0][1]=clrDimGray;
            m_Color[0][2]=clrDimGray;
            m_Color[0][3]=clrPink;
            // желто-коричневая
            m_Color[1][0]=clrLightYellow;
            m_Color[1][1]=clrBrown;
            m_Color[1][2]=clrBrown;
            m_Color[1][3]=clrPink;
            // голубая
            m_Color[2][0]=clrAliceBlue;
            m_Color[2][1]=clrNavy;
            m_Color[2][2]=clrNavy;
            m_Color[2][3]=clrPink;
            return(m_Color[m_ShemeIndex][aColorIndex]); // A value that corresponds to the scheme index and the color index in the scheme is returned
         }
   		/*!	
   			Displaying color samples on a chart.
             \remark	   The schemes are placed horizontally from left to right, the count starts from zero. 
                        Colors are placed from top downwards, the count starts from zero.
   		*/           
         void Show(){ // Displaying of all color of all color schemes
            int m_sc=3; // Number of schemes
            int m_cc=4; // Number of color in a scheme
            color m_bcolor=Color(1);
            int m_RemScheme=m_ShemeIndex;
               for(int s=0;s<m_sc;s++){
                  w.Label("ColorSchemes_"+IntegerToString(s),0,10+s*20,20,IntegerToString(s),m_bcolor);
               }
               for(int s=0;s<m_sc;s++){
                  m_ShemeIndex=s;
                     for(int c=0;c<m_cc;c++){
                        w.Canvas("ColorSchemes_"+IntegerToString(s)+"_"+IntegerToString(c),0,10+s*20,20+15+c*20,20,20,Color(c),m_bcolor);
                     }
               }
            ChartRedraw(0);
            m_ShemeIndex=m_RemScheme;
         }
   		/*!	
   			Deletion of colors samples displayed using the Show() method.
   		*/           
         void Hide(){ // Deletion of color samples displayed using Show() method
            int m_sc=3;
            int m_cc=4;         
               for(int s=0;s<m_sc;s++){
                  ObjectDelete(0,"ColorSchemes_"+IntegerToString(s));
                     for(int c=0;c<m_cc;c++){
                        ObjectDelete(0,"ColorSchemes_"+IntegerToString(s)+"_"+IntegerToString(c));
                     }
               }
            ChartRedraw(0);
         }
};

CColorSchemes ClrScheme;

//+------------------------------------------------------------------+
//|                                                                  |
//|         The classes of controls                                  |
//|                                                                  |
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|         The CInputBox class                                      |
//+------------------------------------------------------------------+

/*!
	\brief   The graphical control "Edit".
	
	\details Two modes of operation: input of text data, input of numeric data. 
	         In the mode of input of numeric data there is a limitation of the range of value that can be specified, 
	         Both a dot and a comma can be used as a decimal separator.
	         At a programmed displaying of value in the edit field, the value is formatted according to a specified 
	         accuracy. It can work in subwindows. 
   \remark	The control consist of two graphical objects - "Edit" (OBJ_EDIT) and "Text Label" (OBJ_LABEL).
            To form a name for the edit field,  "_E" is added to the aName parameter, for the label "_L" is added.
            
*/   

class CInputBox{
   private:
      string m_NameEdit;   // Name of the graphical object Edit
      string m_NameLabel;  // Name of the graphical object Label
      int m_Left;          // Х coordinate
      int m_Top;           // Y coordinate
      int m_Width;         // Width
      int m_Height;        // Height
      bool m_Visible;      // The visibility flag of the control
      int m_Digits;        // Number of decimal places for a double number or -1 when working in the text mode
      string m_Caption;    // Caption
      string m_Value;      // Value
      double m_ValueMin;   // Minimal value
      double m_ValueMax;   // Maximal value
      color m_BgColor;     // Background color 
      color m_TxtColor;    // Text color
      color m_LblColor;    // Label color
      color m_WarningColor;// Background color of a warning
      bool m_Warning;      // The warning flag
      int m_SubWindow;     // Subwindow
      string m_Tag;        // Tag
         void Create(){ // The function of creation of graphical objects
            color m_ctmp=m_BgColor; // Normal color of background
               if(m_Warning){ // The warning mode is set
                  m_ctmp=m_WarningColor; // Text field will be color with the warning color
               }
            w.Edit(m_NameEdit,m_SubWindow,m_Left,m_Top,m_Width,m_Height,m_Value,m_ctmp,m_TxtColor,7,"Arial"); // Creation of a text field
               if(m_Caption!=""){ // If there is a caption
                  w.Label(m_NameLabel,m_SubWindow,m_Left+m_Width+1,m_Top+2,m_Caption,m_LblColor,7,"Arial"); // Creation of label
               } 
         }   
         void Delete(){ // The function of deletion of graphical objects
            ObjectDelete(0,m_NameEdit); // Deletion of the text field
            ObjectDelete(0,m_NameLabel); // Deletion of label
         }    
   public:
		/*!	
			Initialization of a control.
            \param		string aName="CInputBox" - name,
            \param		int aWidth=50 - width,
            \param		int aDigits=-1 - number of decimal places (starting from zero), -1 - the text mode,
            \param		string aCaption="CInputBox" - the text of caption (no caption if the value is "").
 		*/   
      void Init(string aName="CInputBox",int aWidth=50,int aDigits=-1,string aCaption="CInputBox"){ // Initialization method
         m_NameEdit=aName+"_E"; // Preparing name for the text field
         m_NameLabel=aName+"_L"; // Preparing name for the label
         m_Left=0; // Х coordinate
         m_Top=0; // Y coordinate
         m_Width=aWidth; // width
         m_Height=15; // Height
         m_Visible=false; // Visibility
         m_Digits=aDigits; // The operation mode and the number of decimal places
         m_Caption=aCaption; // Text of caption
         m_Value=""; // Value in the text mode
         if(aDigits>=0)m_Value=DoubleToString(0,m_Digits); // Value in the numeric mode
         m_ValueMin=-DBL_MAX; // Minimal value
         m_ValueMax=DBL_MAX; // Maximal value
         m_BgColor=ClrScheme.Color(0); // Background color for the text field
         m_TxtColor=ClrScheme.Color(1); // Color of text and frame of the text field
         m_LblColor=ClrScheme.Color(2); // Color of label
         m_WarningColor=ClrScheme.Color(3); // Warning color
         m_Warning=false; // Mode: warning, normal
         m_SubWindow=0; // Subwindow number
         m_Tag=""; // Tag
      }
		/*!	
			Setting the X and Y coordinates.
            \param		int aLeft - the X coordinate (distance from the left side of the chart),
            \param		int aTop - the Y coordinate (distance from the upper side of the chart).
            \remark	   If the control is disabled, we need to refresh to chart using the Refresh() method.
 		*/        
      void SetPos(int aLeft,int aTop){ // Setting the X and Y coordinate
         m_Left=aLeft;
         m_Top=aTop;
      }
		/*!	
			Setting the X coordinate.
            \param		int aLeft - the X coordinate (distance from the left side of the chart).
            \remark	   If the control is disabled, we need to refresh to chart using the Refresh() method.
 		*/        
      void SetPosLeft(int aLeft){ // Setting the X coordinate 
         m_Left=aLeft;
      }   
		/*!	
			Setting the Y coordinate.
            \param		int aTop - the Y coordinate (distance from the upper side of the chart).
            \remark	   If the control is disabled, we need to refresh to chart using the Refresh() method.
 		*/             
      void SetPosTop(int aTop){ // Setting the Y coordinate
         m_Top=aTop;
      }  
		/*!	
			Setting width.
            \param		int aWidth - width.
            \remark	   If the control is disabled, we need to refresh to chart using the Refresh() method.
 		*/         
      void SetWidth(int aWidth){ // Setting the width 
         m_Width=aWidth;
      }
		/*!	
			Getting the X coordinate.
			\return  Value (int type).
 		*/       
      int Left(){ // Getting the the X coordinate
         return(m_Left);
      }
		/*!	
			Getting the Y coordinate.
			\return  Value (int type).
 		*/        
      int Top(){ // Getting the Y coordinate
         return(m_Top);
      }
		/*!	
			Getting width.
			\return  Value (int type).
			\remark  Value of the text field only without consideration of width of the caption.
 		*/        
      int Width(){ // Getting width
         return(m_Width);
      }
		/*!	
			Getting height.
			\return  Value (int type).
 		*/        
      int Height(){
         return(m_Height); // Getting the height
      }
		/*!	
			Turning on the visibility.
 		*/       
      void Show(){ // Turning on displaying at the previously specified position
         m_Visible=true; // Registration of visibility 
         Create(); // Creation of graphical objects
         ChartRedraw(); // Redrawing the chart
      }
		/*!	
			Turning on visibility at the specified position.
         \param		int aLeft - the X coordinate (distance from the left side of the chart),
         \param		int aTop - the Y coordinate (distance from the upper side of the chart).			
 		*/        
      void Show(int aLeft,int aTop){ // Turning on displaying at the specified position
         SetPos(aLeft,aTop); // Registration of coordinates
         Show(); // Turning on displaying
      }
		/*!	
			Hiding a control (deletion of graphical object).
 		*/   
      void Hide(){ // Hiding (deletion of graphical objects)
         m_Visible=false; // Registration of the invisible state
         Delete(); // Deletion of graphical objects
         ChartRedraw(); // Redrawing the chart
      }  
		/*!	
			Redrawing (hiding and displaying with new parameters).
 		*/         
      void Refresh(){ // Redrawing (deletion and creation)
         if(m_Visible){ // Visibility is turned on
            Delete(); // Deletion of graphical objects
            Create(); // Creation of graphical objects
            ChartRedraw(); // Redrawing the chart 
         }            
      }  
		/*!	
			Setting a value of the string type.
			\param		string aValue - text.	
 		*/         
      void SetValue(string aValue){ // Setting a text value
         m_Value=aValue; // Assigning the value to the variable to store it
            if(m_Visible){ // Visibility of the control is turned on
               g.Attach(m_NameEdit); // Assigning the text field to the object for managing the graphical objects
               g.SetText(m_Value); // Setting the value for the text field
               ChartRedraw(); // Redrawing the chart
            }
      }  
		/*!	
			Setting a value of the double type
			\param		double aValue - value.	
 		*/         
      void SetValue(double aValue){ // Setting a numeric value
         if(m_Digits>=0){ // In the numeric mode
            aValue=NormalizeDouble(aValue,m_Digits); // Normalization of the number according to the specified accuracy
            aValue=MathMax(aValue,m_ValueMin); // "Adjusting" the value according to the minimal acceptable value
            aValue=MathMin(aValue,m_ValueMax); // "Adjusting" the value according to the maximal acceptable value
            SetValue(DoubleToString(aValue,m_Digits)); // Setting the obtained value as a text value
         }
         else{ // In the text mode
            SetValue((string)aValue); // Assigning the value to the variable to store it as is
         }            
      }
		/*!	
			The method of event handling.
			\remark  The method is called from the OnChartEvent() function, all parameters correspond to the parameters of the OnChartEvent() function.
			\return  0 or 1. 0 - no event. 1 – event of modification of the value by a user.
 		*/          
      int Event(const int id,const long & lparam,const double & dparam,const string & sparam){ // Обработка событий
         bool m_event=0; // Variable for an event of this control
            if(id==CHARTEVENT_OBJECT_ENDEDIT){ // There has been an event of the end of editing the text field
               if(sparam==m_NameEdit){ // The text field with the name m_NameEdit has been edited
                  if(m_Digits<0){ // In the text mode
                     g.Attach(m_NameEdit); // Assigning the text field for managing
                        if(g.Text()!=m_Value){ // New value in the text field
                           m_Value=g.Text(); // Assigning the value to the variable for storing it
                           m_event=1; // There has been an event
                        }
                  }
                  else{ // In the numeric
                     string m_OldValue=m_Value; // Variable the previous value of the control
                     g.Attach(m_NameEdit); // Assigning the text field for managing
                     string m_stmp=g.Text(); // Getting text specified by a user from the text field
                     StringReplace(m_stmp,",","."); // Replacing comma with a dot
                     double m_dtmp=StringToDouble(m_stmp); // Conversion to a number
                     SetValue(m_dtmp); // Setting the new numeric value
                        if(StringToDouble(m_Value)!=StringToDouble(m_OldValue)){ // Comparing the previous value with the new one
                           m_event=1; // There has been an event 
                        }
                  }
               }
            }               
         return(m_event); // Return the event. 0 - no event, 1 - there has been an event
      }
		/*!	
			Setting a subwindow by number.
			\param int aNumber - subwindow number.
 		*/       
      void SetSubWindow(int aNumber){ // Setting a subwindow by number
         int m_itmp=(int)MathMax(aNumber,0); // If the number of subwindow is negative, 0 will be used - the price chart
            if(m_itmp!=m_SubWindow){ // The specified window number doesn't correspond the number of window where the control is located
               m_SubWindow=m_itmp; // Registration of the new number of subwindow
               Refresh(); // Recreation of graphical objects
            }
      }  
		/*!	
			Setting a subwindow by subwindow name
			\param string aName - subwindow name.
 		*/              
      void SetSubWindow(string aName){ // Setting subwindow by subwindow name
         SetSubWindow(ChartWindowFind(0,aName)); // Detection of subwindow number by name and setting subwindow by number
      }
		/*!	
			Getting a text value.
			\return Text.
 		*/       
      string ValueStrind(){ // Getting a text value
         return(m_Value);
      }
		/*!	
			Getting a numeric value.
			\return Value (double type).
 		*/         
      double ValueDouble(){ // Getting a numeric value
         return(StringToDouble(m_Value));
      }
		/*!	
			Turning on/off the warning color.
			\param bool aValue - true/false (warning/normal). 
 		*/        
      void SetWarning(bool aValue){ // Setting the warning mode
            if(m_Visible){ // Visibility is turned on
               if(aValue){ // We need to turn on the warning mode
                  if(!m_Warning){ // The warning mode hasn't been enabled
                     g.Attach(m_NameEdit); // Assigning the text field for managing 
                     g.SetBgColor(m_WarningColor); // Setting the warning color of background of the text field
                  }
               }
               else{ // We need to disable the warning mode
                  if(m_Warning){ // The warning mode is enabled
                     g.Attach(m_NameEdit); // Assigning the text field for managing 
                     g.SetBgColor(m_BgColor); // Setting the normal color of background                
                  }
               }
            }
         m_Warning=aValue; // Registration of the mode that has been set
      }
		/*!	
			Getting the warning mode.
			\return bool type. True/false - warning/normal.
 		*/         
      bool Warning(){ // Getting the warning mode
         return(m_Warning);
      }
		/*!	
			Setting a maximal acceptable value.
			\param double aValue - the maximal acceptable value. 
 		*/        
      void SetMaxValue(double aValue){ // Setting the maximal acceptable value
         m_ValueMax=aValue; // Registration of the new maximal acceptable value
            if(m_Digits>=0){ // The control works in the numeric mode
               if(StringToDouble(m_Value)>m_ValueMax){ // The current value of the control is greater than the new maximum acceptable value
                  SetValue(m_ValueMax); // Setting the new value, which is equal to the maximal acceptable value
               }
            }         
      }
		/*!	
			Setting a minimal acceptable value.
			\param double aValue - the minimal acceptable value. 
 		*/        
      void SetMinValue(double aValue){ // Setting the minimum acceptable value
         m_ValueMin=aValue; // Registration of the new minimum acceptable value     
            if(m_Digits>=0){ // The control works in the numeric mode
               if(StringToDouble(m_Value)<m_ValueMin){ // The current value of the control is less than the new minimum acceptable value
                  SetValue(m_ValueMin); // Setting the new value, which is equal to the minimal acceptable value 
               }
            }
      }
		/*!	
			Getting the maximal acceptable value.
			\return Value (double type).
 		*/         
      double MaxValue(){ // Getting the maximal acceptable value
         return(m_ValueMax); 
      }
		/*!	
			Getting the minimal acceptable value.
			\return Value (double type).
 		*/       
      double MinValue(){ // Getting the maximal acceptable value
         return(m_ValueMin);
      }
		/*!	
			Setting a tag.
			\param string aValue - text.
 		*/       
      void SetTag(string aValue){ // Setting the tag
         m_Tag=aValue;
      }
		/*!	
			Getting a tag.
			\return Value (string type).
 		*/        
      string Tag(){ // Getting the tag
         return(m_Tag);
      }  
		/*!	
			Setting a number of decimal places for the numeric mode.
			\param int aValue - number of decimal places.
 		*/          
      void SetDigits(int aValue){ // Setting the number of decimal places
         m_Digits=aValue; // Registration of the new value
            if(m_Digits>=0){ // The numeric mode
               SetValue(ValueDouble()); // Re-setting the current value
            }
      }  
		/*!	
			Getting the number of decimal places.
			\return int type. Greater or equal to zero - number of decimal places. -1 - the control works in the text mode.
 		*/       
      int Digits(){ // Getting the value of m_Digits
         return(m_Digits);
      }   
		/*!	
			Visibility of the control.
			\return bool type. True/false - visible/hidden.
 		*/           
      bool Visible(){
         return(m_Visible);
      }
};

