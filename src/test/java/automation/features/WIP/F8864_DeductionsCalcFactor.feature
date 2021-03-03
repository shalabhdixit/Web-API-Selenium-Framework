#######################################################################
#Webservices test story - F8864_DeductionsCalcFactor
#User Story : US496437 (GET)
#User Story Description : Calc Factor GET
#Author: Daniel Hued   # Date : 6/20/2016
#Reviewed By : 
#######################################################################
Feature: F8864_DeductionsCalcFactorGET

 @CalcFactor_Get_Success 
   Scenario: Testing Calc Factor API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_CalcFactor_Success" for "Success" it returns "200 OK" status, update payload = "NO"
     
 @CalcFactor_Get_Error
   Scenario: Testing Calc Factor API negative scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_CalcFactor_Error" for "Failure" it returns "400" status, update payload = "NO"   
     
 @CalcFactor_Add_Success 
    Scenario Outline: Testing Calc Factor API positive scenario -- ADD services
     Given WEBSERVICES:We create a new API request for "Add_CalcFactor_Success" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.add.CalculationFactorConfigurationAddEvent" with input excel sheet = "CalcFactor_ADD" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Add_CalcFactor_Success" for "Success" it returns "200 OK" status for input excel sheet = "CalcFactor_ADD" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
      
 @CalcFactor_Add_Error
   Scenario Outline: Testing Calc Factor API negative scenario -- ADD services
    Given WEBSERVICES:We create a new API request for "Add_CalcFactor_Error" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.add.CalculationFactorConfigurationAddEvent" with input excel sheet = "CalcFactor_ADD" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_CalcFactor_Error" for "Failure" it returns "400" status for input excel sheet = "CalcFactor_ADD" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Add_CalcFactor_Error" JSON file with input excel sheet = "CalcFactor_ADD" for row "<row_index>" data
     Examples:
      |row_index|
      |34|

 @CalcFactor_Change_Success
    Scenario Outline: Testing Calc Factor positive scenario -- CHANCE services
     Given WEBSERVICES:We create a new API request for "Change_CalcFactor_Success" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.change.CalculationFactorConfigurationChangeEvent" with input excel sheet = "CalcFactor_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_CalcFactor_Success" for "Success" it returns "200 OK" status for input excel sheet = "CalcFactor_CHANGE" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
 
  @CalcFactor_Change_Error
    Scenario Outline: Testing Calc Factor negative scenario -- CHANCE services
     Given WEBSERVICES:We create a new API request for "Change_CalcFactor_Error" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.change.CalculationFactorConfigurationChangeEvent" with input excel sheet = "CalcFactor_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_CalcFactor_Error" for "Failure" it returns "400" status for input excel sheet = "CalcFactor_CHANGE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_CalcFactor_Error" JSON file with input excel sheet = "CalcFactor_CHANGE" for row "<row_index>" data
      Examples:
      |row_index|
      |34|
                     
 @CalcFactor_Remove_Success 
    Scenario Outline: Testing Calc Factor positive scenario -- REMOVE services 
     Given WEBSERVICES:We create a new API request for "Remove_CalcFactor_Success" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.remove.CalculationFactorConfigurationRemoveEvent" with input excel sheet = "CalcFactor_REMOVE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Remove_CalcFactor_Success" for "Success" it returns "200 OK" status for input excel sheet = "CalcFactor_REMOVE" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
                                    
 @CalcFactor_Remove_Error      
    Scenario Outline: Testing Calc Factor negative scenario -- REMOVE services 
     Given WEBSERVICES:We create a new API request for "Remove_CalcFactor_Error" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.remove.CalculationFactorConfigurationRemoveEvent" with input excel sheet = "CalcFactor_REMOVE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Remove_CalcFactor_Error" for "Failure" it returns "400" status for input excel sheet = "CalcFactor_REMOVE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Remove_CalcFactor_Error" JSON file with input excel sheet = "CalcFactor_REMOVE" for row "<row_index>" data
      Examples:
      |row_index|
      |34|
     