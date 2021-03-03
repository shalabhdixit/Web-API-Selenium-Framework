#######################################################################
#Webservices test story - Deduction_Configuration
#User Story : 
#User Sory Description : 
#Author: Deepak Tripathi
#Reviewed By : 
#######################################################################
@DeductionPayroll
Feature: DeductionConfiguration

@GET_Event
  Scenario: Testing Deduction and Payroll 
  When WEBSERVICES:When we run API command for "Get_Event_Configuration_Date" for "Success" it returns "200 OK" status, update payload = "NO"
  
@GET_Payroll
  Scenario: Testing Deduction and Payroll 
  When WEBSERVICES:When we run API command for "Get_Payroll_Configuration_Date" for "Success" it returns "200 OK" status, update payload = "NO"
  
@Configuration_Modify_Success 
  Scenario Outline: Testing Configuration tags -- Modify services
   Given WEBSERVICES:We create a new API request for "POST_ConfigurationTag_Modify" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.add.GeneralDeductionConfigurationAddEvent" with input excel sheet = "Deduction_Modify" for row "<row_index>" data
   And WEBSERVICES:Create an array and add records using excel data for event 1 for row "<row_index>" data
      | ArrayName | DataForArray |
      | data.transform.deductionConfiguration.configurationTags | Array_DedModify |
    When WEBSERVICES:When We run the API request for "POST_ConfigurationTag_Modify" for "Success" it returns "200 OK" status for input excel sheet = "Deduction_Modify" for row "<row_index>" data 
    Examples:
      |row_index|
      |2|  
      
 @Configuration_Add_Success 
  Scenario Outline: Testing Configuration Tags -- ADD services
   Given WEBSERVICES:We create a new API request for "POST_Configuration_ADD" for ClassName "com.adp.ea.payroll.v1.events.generaldeductionconfiguration.add.GeneralDeductionConfigurationAddEvent" with input excel sheet = "Deduction_ADD" for row "<row_index>" data
   And WEBSERVICES:Create an array and add records using excel data for event 1 for row "<row_index>" data
      | ArrayName | DataForArray |
      | data.transform.deductionConfiguration.configurationTags | Array_DudADD |
    When WEBSERVICES:When We run the API request for "POST_Configuration_ADD" for "Success" it returns "200 OK" status for input excel sheet = "Deduction_ADD" for row "<row_index>" data 
    Examples:
      |row_index|
      |2|

