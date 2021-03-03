#######################################################################
#Webservices test story - F8864_DeductionsCalcFactorGET
#User Story : US496437 (GET)
#User Story Description : Calc Factor GET
#Author: Daniel Hued   # Date : 6/20/2016
#Reviewed By : 
#######################################################################
Feature: F8864_DeductionsCalcFactorGET

 @CALCFACTOR_GET 
   Scenario: Testing CalcFactor GET for New Schema
     When WEBSERVICES:When we run API command for "CalcFactor_GET" for "Success" it returns "200 OK" status, update payload = "NO"
     
 @CALCFACTOR_GET_Error
   Scenario: Testing CalcFactor GET for New Schema - Errors
     When WEBSERVICES:When we run API command for "CalcFactor_GET_Error" for "Failure" it returns "400" status, update payload = "NO"   
     
 @CALCFACTOR_ADD   
    Scenario Outline: Testing CalcFactor ADD for New Schema 
     Given WEBSERVICES:We create a new API request for "CalcFactor_ADD1" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.add.CalculationFactorConfigurationAddEvent" with input excel sheet = "CalcFactor_ADD" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "CalcFactor_ADD1" for "Success" it returns "200 OK" status for input excel sheet = "CalcFactor TestCases" for row "<row_index>" data 
     Examples:
      |row_index|
      |2-32|
      
 @CALCFACTOR_ADD_Error
   Scenario: Testing CalcFactor ADD for New Schema - Errors
     When WEBSERVICES:When we run API command for "CalcFactor_ADD_Error" for "Failure" it returns "400" status, update payload = "NO"    
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "CalcFactor_ADD_Error"  
     
#     //07/18/2016
     
   @CALCFACTOR_ADD_Error-Working
    Scenario Outline: General Deductions API and verify errors
    Given WEBSERVICES:We create a new API request for "CalcFactor_ADD_Error" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.add.CalculationFactorConfigurationAddEvent" with input excel sheet = "CalcFactor TestCases" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "CalcFactor_ADD_Error" for "Failure" it returns "400" status for input excel sheet = "CalcFactor TestCases" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "CalcFactor_ADD_Error" JSON file with input excel sheet = "CalcFactor TestCases" for row "<row_index>" data
     Examples:
      |row_index|
      |34|
      #     //07/18/2016-WIP
      @CALCFACTOR_ADD_Error777
    Scenario Outline: General Deductions API and verify errors
    Given WEBSERVICES:We create a new API request for "CalcFactor_ADD_Error" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.add.CalculationFactorConfigurationAddEvent" with input excel sheet = "CalcFactor_ADD" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "CalcFactor_ADD_Error" for "Failure" it returns "400" status for input excel sheet = "CalcFactor_ADD" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "CalcFactor_ADD_Error" JSON file with input excel sheet = "CalcFactor_ADD" for row "<row_index>" data
     Examples:
      |row_index|
      |33|
     
     
     
     @Memo_CHANGE_ERROR1
 Scenario Outline: Memo API - Smoke Test for Update Service Error
 	Given WEBSERVICES:We create a new API request for "Change_Memo_Error" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.change.MemoConfigurationChangeEvent" with input excel sheet = "Change_Memo" for row "<row_index>" data
    When WEBSERVICES:When We run the API request for "Change_Memo_Error" for "Failure" it returns "400" status for input excel sheet = "Change_Memo" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_Memo_Error" JSON file with input excel sheet = "Change_Memo" for row "<row_index>" data
    Examples:
      |row_index|
      |15|
      |16|
     
     
     
     
     
     
     
     
     
     
     
 @GenDed_ADD_UPDATE_REMOVE
    Scenario Outline: General Deductions API - Smoke Test for ADD Service
    Given WEBSERVICES:We create a new API request for "Add_GenDeductions" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.add.GeneralDeductionConfigurationAddEvent" with input excel sheet = "Add_GenDeductions" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_GenDeductions" for "Success" it returns "200 OK" status for input excel sheet = "Add_GenDeductions" for row "<row_index>" data
     Examples:
      |row_index|
      |2|
      |3|
      |4|  
      
 @HOLIDAYS_GET_ERROR
	Scenario: Testing Holidays/Special Effects GET - Invalid Payroll Region
     When WEBSERVICES:When we run API command for "Holidays1_Error_GET" for "Failure" it returns "400" status, update payload = "NO"	
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Holidays1_Error_GET"  
     
#com.adp.ea.payroll.v1.events.calculationfactorconfiguration.change.CalculationFactorConfigurationChangeEvent;
#com.adp.ea.payroll.v1.events.calculationfactorconfiguration.remove.CalculationFactorConfigurationRemoveEvent;  