#######################################################################
#Webservices test story - GetPayAllocations
#User Story : 
#User Story Description : Hours And Earnings GET
#Author: Rajashekhara Hotur   # Date : 08/03/2016
#Reviewed By : Rajashekhara Hotur
#######################################################################
Feature: GetPayAllocation

   @PayAllocation_Get_Success
   	Scenario: Testing GetPayAllocation API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_Pay_Allocation_Success" for "Success" it returns "200 OK" status, update payload = "NO"
   
   
  @PayAllocation_Get_Error
  Scenario: Testing GetPayAllocation API Negative scenario-- GET services
    When WEBSERVICES:When we run API command for "Get_Pay_Allocation_Error" for "Failure" it returns "400" status, update payload = "NO" 
    
  @PayAllocation_Add_Success  
  Scenario Outline: PayAllocation DeptCost API - Test for ADD Service
    Given WEBSERVICES:We create a new API request for "Add_PayAllocDeptCost_Success" for ClassName "com.adp.ea.payroll.v1.events.payallocationconfiguration.add.PayAllocationConfigurationAddEvent" with input excel sheet = "ADD_PayAllocDeptCost" for row "<row_index>" data  
    When WEBSERVICES:When We run the API request for "Add_PayAllocDeptCost_Success" for "Success" it returns "200 OK" status for input excel sheet = "ADD_PayAllocDeptCost" for row "<row_index>" data
     Examples:
      |row_index|
      |2|
     
 
                                   