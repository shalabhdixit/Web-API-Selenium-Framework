#######################################################################
#Webservices test story - US169975_GeneralDeductions
#User Story : US169975,US169980,US157059 and US179711
#User Story Description : General Deductions GET , ADD , CHANGE and REMOVE services
#Author: Rajashekhara Hotur   # Date : 08/16/2016
#Reviewed By : Rajashekhara Hotur
#######################################################################
Feature: US169975_GeneralDeductions

   @GeneralDeductions_Get_Success
   	Scenario: Testing General Deductions API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_General_Deductions_Success" for "Success" it returns "200 OK" status, update payload = "NO"
   
   
   @GeneralDeductions_Get_Success1
   	Scenario: Testing General Deductions API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_General_Deductions_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
              
  @GeneralDeductions_Get_Error
  Scenario: Testing General Deductions API negative scenario-- GET services
    When WEBSERVICES:When we run API command for "Get_General_Deductions_Error" for "Failure" it returns "400" status, update payload = "NO" 
    
    
    
    @GeneralDeductions_Add_Success
    Scenario Outline: Testing General Deductions API positive scenario -- ADD services
     Given WEBSERVICES:We create a new API request for "Add_General_Deductions_Success" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.add.GeneralDeductionConfigurationAddEvent" with input excel sheet = "GeneralDeductions_ADD" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Add_General_Deductions_Success" for "Success" it returns "200 OK" status for input excel sheet = "GeneralDeductions_ADD" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
      
      
      @GeneralDeductions_Add_Error
    Scenario Outline: Testing General Deductions API negative scenario -- ADD services
    Given WEBSERVICES:We create a new API request for "Add_General_Deductions_Error" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.add.GeneralDeductionConfigurationAddEvent" with input excel sheet = "GeneralDeductions_ADD" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_General_Deductions_Error" for "Failure" it returns "400" status for input excel sheet = "GeneralDeductions_ADD" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Add_General_Deductions_Error" JSON file with input excel sheet = "GeneralDeductions_ADD" for row "<row_index>" data
     Examples:
      |row_index|
      |3|
      
      @GeneralDeductions_Change_Success   
    Scenario Outline: Testing General Deductions positive scenario -- CHANCE services
     Given WEBSERVICES:We create a new API request for "Change_General_Deductions_Success" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.change.GeneralDeductionConfigurationChangeEvent" with input excel sheet = "GeneralDeductions_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_General_Deductions_Success" for "Success" it returns "200 OK" status for input excel sheet = "GeneralDeductions_CHANGE" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
 
  		@GeneralDeductions_Change_Error 
       Scenario Outline: Testing General Deductions negative scenario -- CHANCE services
     Given WEBSERVICES:We create a new API request for "Change_General_Deductions_Error" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.change.GeneralDeductionConfigurationChangeEvent" with input excel sheet = "GeneralDeductions_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_General_Deductions_Error" for "Failure" it returns "400" status for input excel sheet = "GeneralDeductions_CHANGE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_General_Deductions_Error" JSON file with input excel sheet = "GeneralDeductions_CHANGE" for row "<row_index>" data
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
     
     
     @GeneralDeductions_Remove_Error    
    Scenario Outline: Testing General Deductions negative scenario -- REMOVE services 
     Given WEBSERVICES:We create a new API request for "Remove_General_Deductions_Error" for ClassName "com.adp.ea.payroll.v1.events.memoconfiguration.remove.MemoConfigurationRemoveEvent" with input excel sheet = "GeneralDeductions_REMOVE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Remove_General_Deductions_Error" for "Failure" it returns "400" status for input excel sheet = "GeneralDeductions_REMOVE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Remove_General_Deductions_Error" JSON file with input excel sheet = "GeneralDeductions_REMOVE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
   
                                   