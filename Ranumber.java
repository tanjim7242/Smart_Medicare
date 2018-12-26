package com.mlab.endpoint.util;

import java.util.Random;

public class Ranumber {

	
	
public static  String GetRanOne()
	{
		
	 int pick=0;
	 Random rand = new Random(20071969);   
	 for (int j = 0; j<10; j++)    
	 	{      
		 pick = rand.nextInt(10);      
		 
	 	}
	 
	return String.valueOf(pick);
	
	}



public static  String GetRanFour()
{
	
 int pick=0;
 Random rand = new Random(20071969);   
 for (int j = 0; j<10; j++)    
 	{      
	 pick = rand.nextInt(10);      
	 	}
 
return String.valueOf(pick);

}


public static  String GetRanTwo()
{
	
 int pick=0;
 Random rand = new Random(20071969);   
 for (int j = 0; j<10; j++)    
 	{      
	 pick = rand.nextInt(10);      
	   
 	}
 
return String.valueOf(pick);

}

public static  String GetRanThree()
{
	
	int pick=0;
	
	Random rand = new Random(20071969);   
	
	 for (int j = 0; j<10; j++)    
	 {      
		 pick = rand.nextInt(10);      
				   
	}
			 
			return String.valueOf(pick);

}

}
