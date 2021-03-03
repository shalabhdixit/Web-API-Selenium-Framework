#######################################################################
#Webservices test story - US251287_AccGeneralDeductions
#User Story : US251287, US251290, and US179711
#User Story Description : Cucumber Accumulators - General Deductions API
#Author: Rajashekhara Hotur   # Date : 08/17/2016
#Reviewed By : Rajashekhara Hotur # Date : 08/17/2016
#######################################################################
Feature: US251287_AccGeneralDeductions_Add_Update_Remove
 	@AccGeneralDeductions_Get_Success
   	Scenario: Testing Acc General Deductions API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_AccGeneralDeductions_Success" for "Success" it returns "200 OK" status, update payload = "NO"
   
   @AccGeneralDeductions_Get_Error
  Scenario: Testing Acc General Deductions API negative scenario-- GET services
    When WEBSERVICES:When we run API command for "Get_AccGeneralDeductions_Error" for "Failure" it returns "400" status, update payload = "NO" 
   
      @AccGeneralDeductions_Add_Success
    Scenario Outline: Testing Accumulators - General Deductions API positive scenario -- ADD services
     Given WEBSERVICES:We create a new API request for "Add_AccGeneralDeductions_Success" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.add.GeneralDeductionConfigurationAddEvent" with input excel sheet = "AccGeneralDeductions_ADD" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Add_AccGeneralDeductions_Success" for "Success" it returns "200 OK" status for input excel sheet = "AccGeneralDeductions_ADD" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
      
     @AccGeneralDeductions_Add_Error
    Scenario Outline: Testing Accumulators - General Deductions API API negative scenario -- ADD services
    Given WEBSERVICES:We create a new API request for "Add_AccGeneralDeductions_Error" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.add.GeneralDeductionConfigurationAddEvent" with input excel sheet = "AccGeneralDeductions_ADD" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_AccGeneralDeductions_Error" for "Failure" it returns "400" status for input excel sheet = "AccGeneralDeductions_ADD" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Add_AccGeneralDeductions_Error" JSON file with input excel sheet = "AccGeneralDeductions_ADD" for row "<row_index>" data
     Examples:
      |row_index|
      |3|
  
      @GeneralDeductions_Change_Success
    Scenario Outline: Testing Accumulators - General Deductions API positive scenario -- CHANCE services
     Given WEBSERVICES:We create a new API request for "Change_AccGeneralDeductions_Success" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.change.GeneralDeductionConfigurationChangeEvent" with input excel sheet = "AccGeneralDeductions_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_AccGeneralDeductions_Success" for "Success" it returns "200 OK" status for input excel sheet = "AccGeneralDeductions_CHANGE" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
 
  		@GeneralDeductions_Change_Error 
       Scenario Outline: Testing Accumulators - General Deductions API negative scenario -- CHANCE services
     Given WEBSERVICES:We create a new API request for "Change_AccGeneralDeductions_Error" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.change.GeneralDeductionConfigurationChangeEvent" with input excel sheet = "AccGeneralDeductions_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_AccGeneralDeductions_Error" for "Failure" it returns "400" status for input excel sheet = "AccGeneralDeductions_CHANGE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_AccGeneralDeductions_Error" JSON file with input excel sheet = "AccGeneralDeductions_CHANGE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
      
     @GeneralDeductions_Remove_Success
    Scenario Outline: Testing Accumulators - General Deductions API positive scenario -- REMOVE services
    Given WEBSERVICES:We create a new API request for "Remove_AccGeneralDeductions_Success" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.remove.GeneralDeductionConfigurationRemoveEvent" with input excel sheet = "AccGeneralDeductions_REMOVE" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Remove_AccGeneralDeductions_Success" for "Success" it returns "200 OK" status for input excel sheet = "AccGeneralDeductions_REMOVE" for row "<row_index>" data
     Examples:
      |row_index|
      |2|
     
     
     @GeneralDeductions_Remove_Error    
    Scenario Outline: Testing Accumulators - General Deductions API negative scenario -- REMOVE services 
     Given WEBSERVICES:We create a new API request for "Remove_AccGeneralDeductions_Error" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.remove.MemoConfigurationRemoveEvent" with input excel sheet = "AccGeneralDeductions_REMOVE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Remove_AccGeneralDeductions_Error" for "Failure" it returns "400" status for input excel sheet = "AccGeneralDeductions_REMOVE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Remove_AccGeneralDeductions_Error" JSON file with input excel sheet = "AccGeneralDeductions_REMOVE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
   
     
   