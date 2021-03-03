#######################################################################
#Webservices US620005 - Test AutoPay Payroll Output API for Associate Payroll Summary for Reimbursement
#User Story : US620005 (GET)
#User Story Description : Test GET for Payroll Summary for Reimbursement
#Author: Evelyn Martinez   # Date : 02/10/2017
#Reviewed By :
#######################################################################
Feature: test

  @US620005_GET
  Scenario: Testing AutoPay Payroll Output API GET for Payroll Summary for Reimbursement
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
     When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
     Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success1"
	 
      | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | codeValue        | TOTC|
	  | codeValue        | B88|
	  | shortName        | DIOCESE OF LONDON |
	  | payrollYear      | 2017 |
      | payrollWeekNumber | 06  |
      | payrollRunNumber  | 6   |
      | codeValue         | PR-PRC |
      | shortName         | Payroll Complete |
	  | idValue           |  T |
      | idDescription     | CHARTY |
      | codeValue         | Deduction |
      | shortName         | Deduction |
      | amountValue       | 18.0 |
      | currencyCode      | CAD |	  
	  | idValue           |  10 |
      | codeValue         | Deduction |
      | shortName         | Deduction |
      | amountValue       | 3.0 |
      | currencyCode      | CAD |	  
	  | idValue           |  11 |
      | codeValue         | Deduction |
      | shortName         | Deduction |
      | amountValue       | 10.69 |
      | currencyCode      | CAD |
	  | tagCode           | Pay Warning Threshold Amount| 
      | dataTypeCode      | Number | 
      | tagValues         | 1000   |
      | tagCode           | Pays Over Limit |
      | dataTypeCode      | Number |
      | tagValues         | 9  |
      | tagCode           | Flagged Pays |
      | dataTypeCode      | Number |
      | tagValues         | 3      |
      | tagCode           | Reports | 
      | dataTypeCode      | String | 
      | tagValues         | Benefit Accrual Current |
      | tagCode           | Reports Setup | 
      | dataTypeCode      | String | 
      | tagValues         | Benefit Accrual Current,Benefit Accrual Transfer and Reset |
      | tagCode           | Out of Sequence |
      | dataTypeCode      | Boolean |
      | tagValues         | false   |
      | tagCode           | Quarter Number |
      | dataTypeCode      | Number |
      | tagValues         | 1 | 
      | tagCode           | Pay Date | 
      | dataTypeCode      | String |
      | tagValues         | 2017-02-10 |
      | tagCode           | Period End Date | 
      | dataTypeCode      | String |
      | tagValues         | 2017-02-03 |
      | tagCode           | Version | 
      | dataTypeCode      | String | 
      | tagValues         | B |
      | tagCode           | Allocation Type | 
      | dataTypeCode      | String |
      | tagValues         | Department |
      | tagCode           | Payroll Type | 
      | dataTypeCode      | String |
      | tagValues         | PR | 
      | tagCode           | Accumulation as of Date Time |
      | dataTypeCode      | String |
      | tagValues         | 2017-02-08-12.28.45 | 
	  
  Scenario: Testing AutoPay Payroll Output API GET for Payroll Summary for Reimbursement
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success" for "Success1" it returns "200 OK" status, update payload = "NO"
	
    When WEBSERVICES:Attach JSON Response to EMail
