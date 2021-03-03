#######################################################################
#Webservices test story - US313478_Memo
#User Story : US456061, US496422, US456068, US456033, US496422
#User Story Description : Cucumber Memo Configuration for CHG services
#Author: Sandra Quan   # Date : 6/01/2016
#Reviewed By : Mahesh Gadi # Date : 2/24/2016
#######################################################################
Feature: F38449_PRModernz_Memo_CHG
 	@Memo_Get_Success
   	Scenario: Testing Memos API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_Memo_Success" for "Success" it returns "200 OK" status, update payload = "NO"
   
   @Memo_Get_Error
  Scenario: Testing Memos API negative scenario-- GET services
    When WEBSERVICES:When we run API command for "Get_Memo_Error" for "Failure" it returns "400" status, update payload = "NO" 
    
    @Memo_Add_Success
    Scenario Outline: Testing Memos API positive scenario -- ADD services
     Given WEBSERVICES:We create a new API request for "Add_Memo_Success" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.add.MemoConfigurationAddEvent" with input excel sheet = "Memos_ADD" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Add_Memo_Success" for "Success" it returns "200 OK" status for input excel sheet = "Memos_ADD" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
      
      
     @Memo_Add_Error
    Scenario Outline: Testing Memos API negative scenario -- ADD services
    Given WEBSERVICES:We create a new API request for "Add_Memo_Error" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.add.MemoConfigurationAddEvent" with input excel sheet = "Memos_ADD" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_Memo_Error" for "Failure" it returns "400" status for input excel sheet = "Memos_ADD" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Add_Memo_Error" JSON file with input excel sheet = "Memos_ADD" for row "<row_index>" data
     Examples:
      |row_index|
      |3|
    
     @Memo_Change_Success   
    Scenario Outline: Testing Memos positive scenario -- CHANCE services
     Given WEBSERVICES:We create a new API request for "Change_Memo_Success" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Memos_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_Memo_Success" for "Success" it returns "200 OK" status for input excel sheet = "Memos_CHANGE" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
 
  		@Memo_Change_Error 
       Scenario Outline: Testing Memos negative scenario -- CHANCE services
     Given WEBSERVICES:We create a new API request for "Change_Memo_Error" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Memos_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_Memo_Error" for "Failure" it returns "400" status for input excel sheet = "Memos_CHANGE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_Memo_Error" JSON file with input excel sheet = "Memos_CHANGE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
    
    
    @Memo_Remove_Success
    Scenario Outline: Testing Memos positive scenario -- REMOVE services
    Given WEBSERVICES:We create a new API request for "Remove_Memo_Success" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.remove.MemoConfigurationRemoveEvent" with input excel sheet = "Memos_REMOVE" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Remove_Memo_Success" for "Success" it returns "200 OK" status for input excel sheet = "Memos_REMOVE" for row "<row_index>" data
     Examples:
      |row_index|
      |2|
      

    @Memo_Remove_Error    
    Scenario Outline: Testing Memos negative scenario -- REMOVE services 
     Given WEBSERVICES:We create a new API request for "Remove_Memo_Error" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.remove.MemoConfigurationRemoveEvent" with input excel sheet = "Memos_REMOVE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Remove_Memo_Error" for "Failure" it returns "400" status for input excel sheet = "Memos_REMOVE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Remove_Memo_Error" JSON file with input excel sheet = "Memos_REMOVE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
     
     
     
       @GeneralDeductions_Remove_Success
    Scenario Outline: Testing General Deductions positive scenario -- REMOVE services
    Given WEBSERVICES:We create a new API request for "Remove_General_Deductions_Success" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.remove.GeneralDeductionConfigurationRemoveEvent" with input excel sheet = "GeneralDeductions_REMOVE" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Remove_General_Deductions_Success" for "Success" it returns "200 OK" status for input excel sheet = "GeneralDeductions_REMOVE" for row "<row_index>" data
     Examples:
      |row_index|
      |2|
	@Memo_ADD_UPDATE_REMOVE      
      Scenario Outline: Memo API - Smoke Test for Update Service
    Given WEBSERVICES:We create a new API request for "Change_Memo" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Change_Memo" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Change_Memo" for "Success" it returns "200 OK" status for input excel sheet = "Change_Memo" for row "<row_index>" data
     Examples:
      |row_index|
      |2|
      |3|
      
 @Memo_ADD_UPDATE_REMOVE1      
       Scenario Outline: Memo API - Smoke Test for Update Service
     Given WEBSERVICES:We create a new API request for "Change_Memo" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Change_Memo" for row "<row_index>" data  
     When WEBSERVICES:When We run the API request for "Change_Memo" for "Success" it returns "200 OK" status for input excel sheet = "Change_Memo" for row "<row_index>" data
      Examples:
      |row_index|
      |2|
      |3|
      |4|
      |5|
      |6|
      |7|
      |8|
      |9|
      |10|
      |11|
      |12|
      |13|  
      |14|
      
 @Memo_CHANGE_ERROR      
       Scenario Outline: Memo API - Smoke Test for Update Service Error
     Given WEBSERVICES:We create a new API request for "Change_Memo_Error" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Change_Memo" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_Memo_Error" for "Failure" it returns "400" status for input excel sheet = "Change_Memo" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_Memo_Error" JSON file with input excel sheet = "Change_Memo" for row "<row_index>" data
      Examples:
      |row_index|
      |15|
      |16|
      |17|
      |18|
      |19|
      |20|
      |21|
      |22|
      |23|
      |24|
      |25|
      |26|
      
   