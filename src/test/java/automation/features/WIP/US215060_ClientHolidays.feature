#######################################################################
#Webservices test story - US215060_ClientHolidays
#User Story : US215060
#User Story Description : Hours And Earnings GET
#Author: Rajashekhara Hotur   # Date : 08/17/2016
#Reviewed By : Rajashekhara Hotur
#######################################################################
Feature: US215060_ClientHolidays

   @ClientHolidays_Get_Success
   	Scenario: Testing Client Holidays API positive scenario-- GET services
     When WEBSERVICES:When we run API command for "Get_Client_Holidays_Success" for "Success" it returns "200 OK" status, update payload = "NO"
     
  @ClientHolidays_Get_Error
  Scenario: Testing Client Holidays API negative scenario-- GET services
    When WEBSERVICES:When we run API command for "Get_Client_Holidays_Error" for "Failure" it returns "400" status, update payload = "NO" 
    
   
                                   