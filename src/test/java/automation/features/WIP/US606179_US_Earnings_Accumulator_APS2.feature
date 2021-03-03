#######################################################################
#Webservices US606179 - Test AutoPay Payroll Output API for Associate Payment Summary for Earnings & Configuration Tags for Canada
#User Story : US606179 (GET)
#User Story Description : Test GET for Associate Payment Summary for Earnings & Configuration Tags for Canada
#Author: Evelyn Martinez  # Date : 02/20/2017
#Reviewed By :
#######################################################################
Feature: test

  @US606179_GET
  Scenario: Testing AutoPay Payroll Output API GET for Associate Payment Summary for Earnings & Configuration Tags
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
     When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
     Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success1"
	 
      | Field                       | Value |
      | itemID                      | prsYqrUd0yYxrCoil9NlYPhaquZl3IADqJ0ftlG-d5s= |
	  | associateOID                | EVELYN1234567896|
	  | amountValue                 | 1234.81 |
	  | currencyCode                | CAD |
	  | codeValue                   | GRS |
	  | shortName                   | Gross |
	  | accumulatorDescription      | Gross This Payroll | 
      | codeValue                   | P |
      | shortName                   | This Payroll |
      | amountValue                 | 2000.0 |
      | currencyCode                | CAD |
      | quantityValue               | 0.0 |
      | idValue                     | *RG | 
      | idDescription               | Regular | 
      | codeValue                   | Earning |
      | shortName                   | Earning |
      | codeValue                   | BP |
      | shortName                   | Base Pay |
      | amountValue                 | 1500.0 |
      | currencyCode                | CAD |
      | quantityValue               | 0.0 |
      | codeValue                   | Pay Period |
      | shortName                   | Pay Period |
      | rateValue                   | 3662.96 | 
      | currencyCode                | CAD |
      | codeValue                   | Pay Period |
      | shortName                   | Pay Period |
      | tagCode                     | Earning Field | 
      | dataTypeCode                | Number |
      | tagValues                   | 1 |
      | tagCode                     | File Number |
      | dataTypeCode                | Number | 
      | tagValues                   | 176 |
      | tagCode                     | Pay Number |
      | dataTypeCode                | Number     |
      | tagValues                   | 1 |
      | tagCode                     | Pay Warning | 
      | dataTypeCode                | String | 
      | tagValues                   | Net Cash Over Limit |
      | tagCode                     | Department Paid | 
      | dataTypeCode                | String |
      | tagValues                   | 5000FC |      
      | tagCode                     | Accumulation as of Date | 
      | dataTypeCode                | String |
      | tagValues                   | 2017-02-08-15.38.41 -50000 |
      | amountValue                 | 1534.1 |
	  | currencyCode                | CAD |
	  | codeValue                   | GRS |
	  | shortName                   | Gross |
	  | accumulatorDescription      | Gross This Payroll | 
      | codeValue                   | P |
      | shortName                   | This Payroll |
      | amountValue                 | 2000.0 |
      | currencyCode                | CAD |
      | quantityValue               | 0.0 |
      | idValue                     | *RG | 
      | idDescription               | Regular | 
      | codeValue                   | Earning |
      | shortName                   | Earning |
      | codeValue                   | BP |
      | shortName                   | Base Pay |
      | amountValue                 | 2000.0 |
      | currencyCode                | CAD |
      | quantityValue               | 0 |
      | codeValue                   | Pay Period |
      | shortName                   | Pay Period |
      | rateValue                   | 2090.12 | 
      | currencyCode                | CAD |
      | codeValue                   | Pay Period |
      | shortName                   | Pay Period |
      | tagCode                     | Earning Field | 
      | dataTypeCode                | Number |
      | tagValues                   | 1 |
      | tagCode                     | File Number |
      | dataTypeCode                | Number | 
      | tagValues                   | 177 |
      | tagCode                     | Pay Number |
      | dataTypeCode                | Number     |
      | tagValues                   | 1 |
      | tagCode                     | Pay Warning | 
      | dataTypeCode                | String | 
      | tagValues                   | Net Cash Over Limit |
      | tagCode                     | Department Paid | 
      | dataTypeCode                | String |
      | tagValues                   | 005116 |      
      | tagCode                     | Accumulation as of Date | 
      | dataTypeCode                | String |
      | tagValues                   | 2017-02-08-15.38.41 -50000 |
      | totalNumber                 | 1 |   
	  
 Scenario: Testing AutoPay Payroll Output API GET for Associate Payment Summary for Earnings & Configuration Tags
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
	
	
    When WEBSERVICES:Attach JSON Response to EMail
