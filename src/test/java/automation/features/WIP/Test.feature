#######################################################################
#Webservices test story - Test
#User Story : US (GET)
#User Story Description : Test GET
#Author: Daniel Hued   # Date : 10/28/2016
#Reviewed By : 
#######################################################################
Feature: Test

 @Test_GET 
   Scenario: Testing CalcFactor GET for New Schema
     #When WEBSERVICES:When we run API command for Anilkumar test
     When WEBSERVICES:When we run API command for "Get_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
     When WEBSERVICES:When we run API command for "Get_Test_ItemID_Success" for "Success" it returns "200 OK" status, update payload = "NO"
