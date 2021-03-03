#######################################################################
#Webservices test story - US491941_HoursAndEarnings
#User Story : US491918,US491922,US491924 and US491925
#User Story Description : Hours And Earnings GET , ADD , CHANGE and REMOVE services
#Author: Rajashekhara Hotur   # Date : 07/26/2016
#Reviewed By : Rajashekhara Hotur
#######################################################################
Feature: US491941_HoursAndEarnings

   @HoursAndEarnings_Success
   	Scenario: Testing Hournings and Earnings API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_Hours_Earning_Success" for "Success" it returns "200 OK" status, update payload = "NO"
   
   
   @HoursAndEarnings_Success
   	Scenario: Testing Hournings and Earnings API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_Hours_Earning_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
              
  @HoursAndEarnings_Error
  Scenario: Testing Hournings and Earnings API negative scenario-- GET services
    When WEBSERVICES:When we run API command for "Get_Hours_Earning_Error" for "Failure" it returns "400" status, update payload = "NO" 
    
    
    
    @HoursEarnings_Add_Success
    Scenario Outline: Testing Hours And Earnings API positive scenario -- ADD services
     Given WEBSERVICES:We create a new API request for "Add_Hours_Earning_Success" for ClassName "com.adp.ea.payroll.v1.events.earningconfiguration.add.EarningConfigurationAddEvent" with input excel sheet = "HoursAndEarnings_ADD" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Add_Hours_Earning_Success" for "Success" it returns "200 OK" status for input excel sheet = "HoursAndEarnings_ADD" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
      
      
      @HoursEarnings_Add_Error
    Scenario Outline: Testing Hours And Earnings API positive scenario -- ADD services
    Given WEBSERVICES:We create a new API request for "Add_Hours_Earning_Error" for ClassName "com.adp.ea.payroll.v1.events.earningconfiguration.add.EarningConfigurationAddEvent" with input excel sheet = "HoursAndEarnings_ADD" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_Hours_Earning_Error" for "Failure" it returns "400" status for input excel sheet = "HoursAndEarnings_ADD" for row "<row_index>" data
    Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Add_Hours_Earning_Error" JSON file with input excel sheet = "HoursAndEarnings_ADD" for row "<row_index>" data
     Examples:
      |row_index|
      |3|
      
      @HoursEarnings_Change_Success   
    Scenario Outline: Testing Hours Earnings Change for New Schema 
     Given WEBSERVICES:We create a new API request for "Change_Hours_Earning_Success" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.change.CalculationFactorConfigurationChangeEvent" with input excel sheet = "HoursAndEarnings_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_Hours_Earning_Success" for "Success" it returns "200 OK" status for input excel sheet = "HoursAndEarnings_CHANGE" for row "<row_index>" data 
     Examples:
      |row_index|
      |2|
 
  		@HoursEarnings_Change_Error      
       Scenario Outline: Testing Hours Earnings Change API and verify errors
     Given WEBSERVICES:We create a new API request for "Change_Hours_Earning_Error" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.change.CalculationFactorConfigurationChangeEvent" with input excel sheet = "HoursAndEarnings_CHANGE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Change_Hours_Earning_Error" for "Failure" it returns "400" status for input excel sheet = "HoursAndEarnings_CHANGE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Change_Hours_Earning_Error" JSON file with input excel sheet = "HoursAndEarnings_CHANGE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
      
     @HoursEarnings_Remove_Success
    Scenario Outline: Testing Hours Earnings Remove API and verify errors
    Given WEBSERVICES:We create a new API request for "Remove_Hours_Earning_Success" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.remove.CalculationFactorConfigurationRemoveEvent" with input excel sheet = "HoursAndEarning_REMOVE" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Remove_Hours_Earning_Success" for "Success" it returns "200 OK" status for input excel sheet = "HoursAndEarning_REMOVE" for row "<row_index>" data
     Examples:
      |row_index|
      |2|
     
  @HoursEarnings_Remove_Error      
    Scenario Outline: Testing Hours Earnings negative scenario -- REMOVE services 
     Given WEBSERVICES:We create a new API request for "Remove_Hours_Earning_Error" for ClassName "com.adp.ea.payroll.v1.events.calculationfactorconfiguration.remove.CalculationFactorConfigurationRemoveEvent" with input excel sheet = "HoursAndEarning_REMOVE" for row "<row_index>" data
     When WEBSERVICES:When We run the API request for "Remove_Hours_Earning_Error" for "Failure" it returns "400" status for input excel sheet = "HoursAndEarning_REMOVE" for row "<row_index>" data 
     Then WEBSERVICES:Verify Error Codes and Error Descriptions in JSON Response "Remove_Hours_Earning_Error" JSON file with input excel sheet = "HoursAndEarning_REMOVE" for row "<row_index>" data
      Examples:
      |row_index|
      |3|
                                   