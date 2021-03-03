#######################################################################
#Webservices test story - US386777_PayrollProcessSchedules
#User Story : US386777
#User Story Description : Calc Factor GET
#Author: Rajashekhara Hotur   # Date : 09/09/2016
#Reviewed By : 
#######################################################################
Feature: F8864_PayrollProcessSchedules_Get

 @PayrollProcessSchedules_Get_Success 
   Scenario: Testing Payroll Process Schedules API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_PayrollProcessSchedules_Success" for "Success" it returns "200 OK" status, update payload = "NO"
     
 @PayrollProcessSchedules_Get_Error
   Scenario: Testing Payroll Process Schedules API negative scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_PayrollProcessSchedules_Error" for "Failure" it returns "400" status, update payload = "NO"   
     
 
     