package com.adp.autopay.automation.webservices;

import com.adp.autopay.automation.mongodb.RunStatus;
import com.adp.autopay.automation.utility.PropertiesFile;
import com.jayway.restassured.response.Header;

import cucumber.api.DataTable;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class WebServiceParameters
{
  String strTestName;
  String strURI;
  String strRequestType;
  ArrayList<Header> headers;
  
  
  public WebServiceParameters()
  {
	  
  }
  @SuppressWarnings({ "rawtypes", "unchecked" })
public WebServiceParameters(String[] arrParameterData)
  {
    this.strTestName = arrParameterData[0];
    this.strURI = arrParameterData[1];
    if (arrParameterData.length == 2)
    {
      this.strRequestType = "GET";
      this.headers = null; return;
    }
    int iTemp;
    
    if (arrParameterData[2].split("=").length == 0)
    {
      this.strRequestType = "GET";
      iTemp = 2;
    }
    else
    {
      this.strRequestType = arrParameterData[2];
      if (arrParameterData.length == 3)
      {
        this.headers = null;
        return;
      }
      iTemp = 3;
    }
    this.headers = new ArrayList();
      for (int j = iTemp; j < arrParameterData.length ; j++)
    {
      String[] arrTemp = arrParameterData[j].split("=");
      this.headers.add(new Header(arrTemp[0], arrTemp[1]));
    }
  }
  
  public String getStrTestName()
  {
    return this.strTestName;
  }
  
  public String getStrURI()
  {
    return this.strURI;
  }
  
  public String getStrRequestType()
  {
    return this.strRequestType;
  }
  
  public ArrayList<Header> getHeaders()
  {
	  System.out.println(this.headers);
	  return this.headers;
  }
  
  public String getItemsIDs(Map<String, String> astrSearch, String strBaseURI) {
      try {
	        	//FileReader reader = new FileReader(PropertiesFile.GetEnvironmentProperty("TESTDATA_EXCEL_PATH") + "outputFileMapping.properties");
      		FileReader reader = new FileReader(System.getProperty("user.dir")+PropertiesFile.GetEnvironmentProperty("TESTDATA_EXCEL_PATH")+"\\outputFileMapping.properties");
				Properties properties = new Properties();
				properties.load(reader);
				if(properties.size() == 0){
					return null;
				}
              //InputStream is = new FileInputStream(properties.getProperty(("ROW" + astrSearch[0].split(":=")[1]).toString()));
			  InputStream is = new FileInputStream(properties.getProperty(("ROW" + astrSearch.get("GET_ITEMID_FROM_ROW"))));
              String jsonTxt = IOUtils.toString(is);
              System.out.println(jsonTxt);
              JSONObject json = new JSONObject(jsonTxt);   

             //obj = new JSONObject("C:\\Users\\Velurubp\\Desktop\\sample.json");
             JSONArray arr = json.getJSONArray(getRootTag(strBaseURI));
             System.out.println(arr);
             Boolean blnFind = false;
             for(int i = 0; i < arr.length(); i++)
             {
          	   	 String strJsonArrayBlock = arr.get(i).toString();
                   System.out.println(arr.get(i).toString());
                   for(String key: astrSearch.keySet()){
	                 	{
	                 		//String[] astrHeader = astrSearch[j].split(":=");
	                 		if(!key.equals("GET_ITEMID_FROM_ROW")){
	                 			String strVerifyCont = '"' + key + '"' + ":" + '"' + astrSearch.get(key);
		                 		//dataObject.getUrlParams().put(astrHeader[0], astrHeader[1]);
		                 		if (strJsonArrayBlock.contains(strVerifyCont) != true){
		                 			blnFind = false;
		                 			break;
		                 		}
		                 		else{
		                 			blnFind = true;
		                 		}
	                 		}
	                 	}
                  }
               if(blnFind){
                	 return (strJsonArrayBlock.split('"' + "itemID" + '"' + ":" + '"')[1].split('"' + "," + '"')[0].toString());}
               
             }
             if(!blnFind){
            	 return null;
             }
      } catch (Exception e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
      }
		return "";
  }
  

  public String getRootTag(String strBase){
  	String[] astrBase = strBase.split("\\?");
	switch (astrBase[0]){
  	case "/payrollOutputService/payroll/v1/payroll-output" :
  		return "payrollOutputs";
  	default :
  		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>Invalid Base URI sent<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
  		return "";
  	}
  }
  
  public String verifyFieldNValwithHiearcy(String content,String strField,String strValue) {
	  
	  try
	  {
		  JSONObject json = new JSONObject(content);
		  String[] arrF= strField.split("/");
		  for(int i=0;i<(arrF.length)-1;i++)
		  {
			  json = verifyNreturnJosn(json, arrF[i]);
			  if(json== null)
			  {
				  return "Key is not found for key:" +arrF[i];
			  }
		  }
		  String str = verifyJsonTagNValue(json,arrF[arrF.length -1],strValue);
		  if(str.trim().length()==0)
		  {
			  return "";
		  }else{
			  return "Mismatches with the Value is:" +str;
		  }
	  }catch(Exception e)
	  {
		  e.getMessage();
	  }
	return "JSON object not found";
	  
  }
  public JSONObject verifyNreturnJosn(JSONObject obj, String keyMain)
	{
		 Iterator iterator = obj.keys();
		    String key = null;
		    while (iterator.hasNext()) {
		        key = (String) iterator.next();
		        // if it's jsonobject
		        if (obj.optJSONObject(key) != null) {
		        	if ((key.equals(keyMain)) ) {
		                return obj.getJSONObject(key);
		            }
		         //   verifyNreturnJosn(obj.getJSONObject(key), keyMain);
		        }
		        // if it's jsonarray
		        if (obj.optJSONArray(key) != null) {
		            JSONArray jArray = obj.getJSONArray(key);
		            //for (int i=0;i<jArray.length();i++) {
		            	if ((key.equals(keyMain)) ) {
		            		return jArray.getJSONObject(0); 
		            	}
		              //    verifyNreturnJosn(jArray.getJSONObject(i), keyMain);
		        //    }
		        }
		    }
		  return null;
		}

  public String verifyJsonTagNValue(JSONObject obj, String keyMain, String newValue)  {
	    // We need to know keys of Jsonobject
	    Iterator iterator = obj.keys();
	    String key = null;
	    String value = null;
	    String strAllValue="";
	    while (iterator.hasNext()) {
	        key = (String) iterator.next();
	        if ((key.equals(keyMain)) ) {
          	value = obj.get(keyMain).toString().trim();
          	if (key.equalsIgnoreCase("tagValues")){
          		value = value.replace("[", "").replace("]", "").replace("\"", "").trim();
          	}
          	if(value.equalsIgnoreCase(newValue))
          	{
          		System.out.println("Verify the field:"+ key +"and value is :"+newValue);
          		return "";
          	}else{
          		strAllValue = strAllValue+","+newValue;
          	}
          }
	        if (!key.equalsIgnoreCase("tagValues"))
	        {
	        	// if it's jsonobject
		        if (obj.optJSONObject(key) != null) {
		        	String strVal= verifyJsonTagNValue(obj.getJSONObject(key), keyMain, newValue);
		        	if (strVal.trim().length()==0 )
		        	{
		        		return "";
		        	}
		        	
		        }

		        // if it's jsonarray
		        if (obj.optJSONArray(key) != null) {
		            JSONArray jArray = obj.getJSONArray(key);
		            for (int i=0;i<jArray.length();i++) {
		            	String strVal = verifyJsonTagNValue(jArray.getJSONObject(i), keyMain, newValue);
		            	if (strVal.trim().length()==0 )
			        	{
			        		return "";
			        	}
			        	
		            }
		        }
	        }
	    }
	    if (strAllValue.trim().length() <1)
	    {
	    	strAllValue = keyMain+ "is not found in the json file";
	    }
		return strAllValue.trim();
	}


}
