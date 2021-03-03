#######################################################################
#Webservices US606179 - Test AutoPay Payroll Output API for Associate Payment Summary for Earnings & Configuration Tags
#User Story : US606179 (GET)
#User Story Description : Test GET for Associate Payment Summary for Earnings & Configuration Tags
#Author: Evelyn Martinez  # Date : 02/17/2017
#Reviewed By :
#######################################################################
Feature: test

  @US606179_GET
  Scenario: Testing AutoPay Payroll Output API GET for Associate Payment Summary for Earnings & Configuration Tags
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"     
	  When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success11" for "Success" it returns "200 OK" status, update payload = "NO"
	  Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success11"
	  
	  | Field                       | Value |
      | itemID                      | BSMJKFWbhqUWJY7wOqKFjkd6Bx6CUqoXZN+Z+sU0u2U= |
	  | associateOID                | G33Q6RRDWRMYQGSK|
	  | amountValue                 | 0.0 |
	  | currencyCode                | USD |
	  | codeValue                   | GRS |
	  | shortName                   | Gross |
	  | accumulatorDescription      | Gross This Payroll | 
      | codeValue                   | P |
      | shortName                   | This Payroll |
      | amountValue                 | 5.0 |
      | currencyCode                | USD |
      | idValue                     | *RG | 
      | idDescription               | Regular | 
      | codeValue                   | Earning |
      | codeValue                   | BP |
      | shortName                   | Base Pay |
      | amountValue                 | 5.0 |
      | currencyCode                | USD |
      | codeValue                   | Pay Period |
      | shortName                   | Pay Period |
      | tagCode                     | Earning Field | 
      | dataTypeCode                | Number |
      | tagValues                   | 1 |
      | tagCode                     | File Number |
      | dataTypeCode                | Number | 
      | tagValues                   | 9500|
      | tagCode                     | Pay Number |
      | dataTypeCode                | Number     |
      | tagValues                   | 1 |
      | tagCode                     | Department Paid | 
      | dataTypeCode                | String | 
      | tagValues                   |ID,            |   
      | tagCode                     | Accumulation as of Date | 
      | dataTypeCode                | String |
      | tagValues                   | 2017-02-17-14.45.25 -50000 | 
      | amountValue                 | -3.83 |
      | currencyCode                | USD | 
      | tagCode                     | File Number | 
      | dataTypeCode                | Number | 
      | tagValues                   | 9500 |
      | tagCode                     | Pay Number | 
      | dataTypeCode                | Number | 
      | tagValues                   | 2 | 
      | tagCode                     | Special Pay | 
      | dataTypeCode                | String | 
      | tagValues                   | Recalc |
      | tagCode                     | Department Paid | 
      | dataTypeCode                | String | 
      | tagValues                   | ID,             |         
      | tagCode                     | Accumulation as of Date | 
      | dataTypeCode                | String | 
      | tagValues                   | 2017-02-17-14.45.25 -50000 | 
      | totalNumber                 | 1 | 
	  
	  
    