#######################################################################
#Webservices test story - PayrollItem
#User Story : US460712
#User Story Description : Payroll Item Groups GET 
#Author: Rajashekhara Hotur   # Date : 08/15/2016
#Reviewed By : Rajashekhara Hotur
#######################################################################
Feature: PayrollReportsGroups
   @PayrollReportGroups_Success
   	Scenario: Testing Payroll Report Groups API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_Payroll_Report_Groups_Success" for "Success" it returns "200 OK" status, update payload = "NO"
   
              
  @PayrollReportGroups_Error
  Scenario: Testing Payroll Report Groups API negative scenario-- GET services
    When WEBSERVICES:When we run API command for "Get_Payroll_Report_Groups_Error" for "Failure" it returns "400" status, update payload = "NO" 
    
   
 
                                   