#######################################################################
#Webservices test story - F38449_PRModernz_Memo_CHG
#User Story : US456061, US496422, US456068, US456033, US496422
#User Story Description : Cucumber Memo Configuration for CHG services
#Author: Sandra Quan   # Date : 6/01/2016
#Reviewed By : Mahesh Gadi # Date : 2/24/2016
#######################################################################
Feature: F38449_PRModernz_Memo_CHG


@Memo_ADD_UPDATE_REMOVE      
      Scenario Outline: Memo API - Smoke Test for Update Service
    Given WEBSERVICES:We create a new API request for "Change_Memo" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Change_Memo" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Change_Memo" for "Success" it returns "200 OK" status for input excel sheet = "Change_Memo" for row "<row_index>" data
     Examples:
      |row_index|
      |ALL|
      |2|
      |3|
      
 @Memo_ADD_UPDATE_REMOVE1      
       Scenario Outline: Memo API - Smoke Test for Update Service
     Given WEBSERVICES:We create a new API request for "Change_Memo" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Change_Memo" for row "<row_index>" data  
     When WEBSERVICES:When We run the API request for "Change_Memo" for "Success" it returns "200 OK" status for input excel sheet = "Change_Memo" for row "<row_index>" data
      Examples:
      |row_index|
#      |ALL|
       |2-9|
#      |3|
#      |4|
#      |5|
#      |6|
#      |7|
#      |8|
#      |9|
#      |10|
#      |11|
#      |12|
#      |13|  
#      |14|
      

      
 @Memo_CHANGE_ERROR1
 Scenario Outline: Memo API - Smoke Test for Update Service Error
 	Given WEBSERVICES:We create a new API request for "Change_Memo_Error" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Change_Memo" for row "<row_index>" data
    When WEBSERVICES:When We run the API request for "Change_Memo_Error" for "Failure" it returns "400" status for input excel sheet = "Change_Memo" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_Memo_Error" JSON file with input excel sheet = "Change_Memo" for row "<row_index>" data
    Examples:
      |row_index|
      |15-26|
      
      
 @GenDed_ADD_UPDATE_REMOVE-Ve
    Scenario Outline: General Deductions API and verify errors
    Given WEBSERVICES:We create a new API request for "Add_GenDeductions" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.add.GeneralDeductionConfigurationAddEvent" with input excel sheet = "Add_GenDeductions" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_GenDeductions" for "Failure" it returns "400" status for input excel sheet = "Add_GenDeductions" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Add_GenDeductions" JSON file with input excel sheet = "Add_GenDeductions" for row "<row_index>" data
     Examples:
      |row_index|
      |4|
      
      
      
      
      
      
      
      
      
      
   