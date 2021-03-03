#######################################################################
#Webservices US620005 - Test AutoPay Payroll Output API for Associate Payment Details for Reimbursement
#User Story : US620005 (GET)
#User Story Description : Test GET for Associate Payment Details for Reimbursement
#Author: Evelyn Martinez   # Date : 02/8/2017
#Reviewed By :
#######################################################################
Feature: test

  @US620005_GET
  Scenario: Testing AutoPay Payroll Output API GET for Associate Payment Summary for Non-Statutory Deductions
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
     When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
     Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success1"
	 
      | tagValues | Benefit Accrual Current,Benefit Accrual Transfer and Reset |  
	  
	  When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success2" for "Success" it returns "200 OK" status, update payload = "NO"
	    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success2"
		
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567714|
	  | amountValue      | 2007.67 |
	  | currencyCode     | CAD |
	  | idValue          | 009514 |
	  | codeValue        | Department|
      | idValue          | R |
      | idDescription    | RPP	  |
	  | codeValue        | Deduction |
	  | amountValue      | 5 |
      | currencyCode     | CAD |	  
	  
	  
	  
     When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success3" for "Success" it returns "200 OK" status, update payload = "NO"
	   Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success3"
	 
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567713|
	  | amountValue      | 1347.44 |
	  | currencyCode     | CAD |
      | idValue          | T |
      | idDescription    | CHARITY	  |
	  | codeValue        | Deduction |
	  | amountValue      | 4 |
      | currencyCode     | CAD |
	 
	  
	  When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success4" for "Success" it returns "200 OK" status, update payload = "NO"
	    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success4"
	  
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567897|
	  | amountValue      | 1457.34 |
	  | currencyCode     | CAD |
	  | idValue          | 006046 |
	  | codeValue        | Department|
      | idValue          | 11 |
	  | codeValue        | Deduction |
	  | amountValue      | 2.36 |
      | currencyCode     | CAD |
	  
	  
	  
     When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success5" for "Success" it returns "200 OK" status, update payload = "NO"
	   Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success5"
	 
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567896|
	  | amountValue      | 1437.21 |
	  | currencyCode     | CAD |
	  | idValue          | 5000FC |
	  | codeValue        | Department|
      | idValue          | A |
	  | idDescription    | ADVANC | 
	  | codeValue        | Deduction |
	  | amountValue      | 0.12 |
      | currencyCode     | CAD |	 
	  
	  When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success6" for "Success" it returns "200 OK" status, update payload = "NO"
	  Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success6"
	  
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567895|
	  | amountValue      | 2303.84 |
	  | currencyCode     | CAD |
	  | idValue          | 009280 |
	  | codeValue        | Department|
      | idValue          | T |
      | idDescription    | CHARTY	  |
	  | codeValue        | Deduction |
	  | amountValue      | 6 |
      | currencyCode     | CAD |	
      | idValue          | 11  |
      | codeValue        | Deduction |
      | amountValue      | 1.33 |
	  | currencyCode     | CAD  |	  
	  
	  
     When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success7" for "Success" it returns "200 OK" status, update payload = "NO"
	 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success7"
	 
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567894|
	  | amountValue      | 1246.33 |
	  | currencyCode     | CAD |
	  | idValue          | 009514 |
	  | codeValue        | Department|
      | idValue          | 10 | 
	  | codeValue        | Deduction |
	  | amountValue      | 3 |
      | currencyCode     | CAD |	
	  
	  
	   When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success8" for "Success" it returns "200 OK" status, update payload = "NO"
	 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success8"
	 
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567893|
	  | amountValue      | 1586.97 |
	  | currencyCode     | CAD |
	  | idValue          | 009601 |
	  | codeValue        | Department|
      | idValue          | 11 | 
	  | codeValue        | Deduction |
	  | amountValue      | 3 |
      | currencyCode     | CAD |	
	  	  
	 
	  
	 When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success9" for "Success" it returns "200 OK" status, update payload = "NO"
	 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success9"
	 
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567891|
	  | amountValue      | 1198.75 |
	  | currencyCode     | CAD |
	  | idValue          | 009021 |
	  | codeValue        | Department|
      | idValue          | 11 | 
	  | codeValue        | Deduction |
	  | amountValue      | 4 |
      | currencyCode     | CAD |
	  
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success10" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success10"
	
	  | Field            | Value |
      | itemID           | prsYqrUd0yYxrCoil9NlYMFdGB4pZa2vAO3NxHh-OkM= |
	  | associateOID     | EVELYN1234567890|
	  | amountValue      | 2413.49 |
	  | currencyCode     | CAD |
	  | idValue          | AAAAAA |
	  | codeValue        | Department|
      | idValue          | T |
      | idDescription    | CHARTY	  |
	  | codeValue        | Deduction |
	  | amountValue      | 5 |
      | currencyCode     | CAD |	
      | idValue          | 11  |
      | totalNumber      | 10  |   	  
      
	  
	  
	  
  Scenario: Testing AutoPay Payroll Output API GET for Associate Payment Summary for Non-Statutory Deductions
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success2" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success3" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success4" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success5" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success6" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success7" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success8" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success9" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success10" for "Success" it returns "200 OK" status, update payload = "NO"
	
    When WEBSERVICES:Attach JSON Response to EMail
