#######################################################################
#Webservices test story - PayrollItemGroups
#User Story : US327010, US327018, US327012 and US327014
#User Story Description : Payroll Item Groups GET , ADD , CHANGE and REMOVE services
#Author: Rajashekhara Hotur   # Date : 08/02/2016
#Reviewed By : Rajashekhara Hotur
#######################################################################
Feature: PayrollItemGroups

   @PayrollItemGroups_Success
   	Scenario: Testing Payroll Item Groups API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_Payroll_Item_Groups_Success" for "Success" it returns "200 OK" status, update payload = "NO"
   
              
  @PayrollItemGroups_Error
  Scenario: Testing Payroll Item Groups API negative scenario-- GET services
    When WEBSERVICES:When we run API command for "Get_Payroll_Item_Groups_Error" for "Failure" it returns "400" status, update payload = "NO" 
    
    
    
    @PayrollItemGroups_Add_Success
    Scenario Outline: Testing Payroll Item Groups API positive scenario-- ADD services 
     Given WEBSERVICES:We create a new API request for "Add_Payroll_Item_Groups_Success" for ClassName "com.adp.ea.payroll.v1.events.payrollitemgroup.add.PayrollItemGroupAddEvent" with input excel sheet = "PayrollItemGroups_ADD" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Add_Payroll_Item_Groups_Success" for "Success" it returns "200 OK" status for input excel sheet = "PayrollItemGroups_ADD" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
      
      
     @PayrollItemGroups_Add_Error
    Scenario Outline: Testing Payroll Item Groups API Negative scenario-- ADD services
    Given WEBSERVICES:We create a new API request for "Add_Payroll_Item_Groups_Error" for ClassName "com.adp.ea.payroll.v1.events.payrollitemgroup.add.PayrollItemGroupAddEvent" with input excel sheet = "PayrollItemGroups_ADD" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_Payroll_Item_Groups_Error" for "Failure" it returns "400" status for input excel sheet = "PayrollItemGroups_ADD" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Add_Payroll_Item_Groups_Error" JSON file with input excel sheet = "PayrollItemGroups_ADD" for row "<row_index>" data
     Examples:
      |row_index|
      |3|
      
      @PayrollItemGroups_Change_Success   
    Scenario Outline: Testing Payroll Item Groups API Positve scenario-- CHANGE services 
     Given WEBSERVICES:We create a new API request for "Change_Payroll_Item_Groups_Success" for ClassName "com.adp.ea.payroll.v1.events.payrollitemgroup.change.PayrollItemGroupChangeEvent" with input excel sheet = "PayrollItemGroups_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_Payroll_Item_Groups_Success" for "Success" it returns "200 OK" status for input excel sheet = "PayrollItemGroups_CHANGE" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
 
  	 @PayrollItemGroups_Change_Error      
     Scenario Outline: Testing Payroll Item Groups API negative scenario-- CHANGE services
     Given WEBSERVICES:We create a new API request for "Change_Payroll_Item_Groups_Error" for ClassName "com.adp.ea.payroll.v1.events.payrollitemgroup.change.PayrollItemGroupChangeEvent" with input excel sheet = "PayrollItemGroups_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_Payroll_Item_Groups_Error" for "Failure" it returns "400" status for input excel sheet = "PayrollItemGroups_CHANGE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_Payroll_Item_Groups_Error" JSON file with input excel sheet = "PayrollItemGroups_CHANGE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
      
     @PayrollItemGroups_Remove_Success
    Scenario Outline: Testing Payroll Item Groups API positive scenario-- REMOVE services
    Given WEBSERVICES:We create a new API request for "Remove_Payroll_Item_Groups_Success" for ClassName "com.adp.ea.payroll.v1.events.payrollitemgroup.remove.PayrollItemGroupRemoveEvent" with input excel sheet = "PayrollItemGroups_REMOVE" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Remove_Payroll_Item_Groups_Success" for "Success" it returns "200 OK" status for input excel sheet = "PayrollItemGroups_REMOVE" for row "<row_index>" data
     Examples:
      |row_index|
      |2|
      
      
       @PayrollItemGroups_Remove_Error      
     Scenario Outline: Testing Payroll Item Groups API negative scenario-- REMOVE services
     Given WEBSERVICES:We create a new API request for "Remove_Payroll_Item_Groups_Error" for ClassName "com.adp.ea.payroll.v1.events.payrollitemgroup.remove.PayrollItemGroupRemoveEvent" with input excel sheet = "PayrollItemGroups_REMOVE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Remove_Payroll_Item_Groups_Error" for "Failure" it returns "400" status for input excel sheet = "PayrollItemGroups_REMOVE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Remove_Payroll_Item_Groups_Error" JSON file with input excel sheet = "PayrollItemGroups_REMOVE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
     
 
                                   