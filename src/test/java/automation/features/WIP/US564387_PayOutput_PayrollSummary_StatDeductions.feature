#######################################################################
#Webservices US564387 - Test AutoPay Payroll Output API for Payroll Summary for Statutory Deductions
#User Story : US564387 (GET)
#User Story Description : Test GET for Payroll Summary for Statutory Deductions
#Author: Johnine Chan   # Date : 01/29/2017
#Reviewed By : 
#######################################################################
Feature: Test

 @US564387_GET
   Scenario: Testing AutoPay Payroll Output API GET for Payroll Summary for Statutory Deductions
     When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
     When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
		 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success1"
		   | Field           | Value|
		   | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro= |
		   | sectionCategory | Federal Taxes |
		   | sectionName     | Normal Pay |
		   | codeValue       | FIT |
		   | shortName       | Federal Income Tax |
		   | sectionCategory | Local Taxes |
		   | amountValue     | 215897.47 |
		   | amountValue     | 1125653.89 |
		   | codeValue       | MEDST |
		   | shortName       | Medicare SurTax |
		   | amountValue     | 193.54 |
		   | amountValue     | 21504.98 |   
#		   | sectionName     | Normal Pay |
#		   | codeValue       | 3301 |
#		   | shortName       | MCTMTT |
#		   | codeValue       | MTA |
#		   | shortName       | MTA Tax |
#		   | amountValue     | 5.3300 |
#		   | codeValue       | WCA |
#		   | shortName       | OR Workers Comp Assessment |
#		   | amountValue     | 1.32 |
#		   | amountValue     | 1.3200 |
#		      
#		   | codeValue       | FIT |
#		   | shortName       | Federal Income Tax |
#		   | amountValue     | 5210.00 |
#		   | currencyCode    | USD |
#		   | codeValue       | FUTA |
#		   | shortName       | FUTA Tax |
# 		   | amountValue     | 31.260000 |
# 		   | amountValue     | 5210.00 |
# 		   | codeValue       | MED |
#		   | shortName       | Medicare Tax |
# 		   | amountValue     | 5210.00 |
# 		   | amountValue     | 75.55 |
# 		   | amountValue     | 75.545000 |
# 		   | amountValue     | 5210.00 |
# 		   | codeValue       | SS |
#		   | shortName       | Social Security Tax |
# 		   | amountValue     | 5210.00 |
# 		   | amountValue     | 323.02 |
# 		   | amountValue     | 323.020000 |
# 		   | amountValue     | 5210.00 |
# 		   | codeValue       | SUI |
#		   | shortName       | NJ SUI Tax |
# 		   | amountValue     | 5210.00 |
# 		   | amountValue     | 26.31 |
# 		   | amountValue     | 75.545000 |
# 		   | amountValue     | 5210.00 |
# 		   | codeValue       | SDI |
#		   | shortName       | NJ SDI Tax |
# 		   | amountValue     | 5210.00 |
# 		   | amountValue     | 10.42 |
# 		   | amountValue     | 5210.00 |
#			 | codeValue       | SIT |
#		   | shortName       | NJ State Income Tax |
# 		   | amountValue     | 2630.00 |
# 		   | amountValue     | 139.48 |
# 		 When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success2" for "Success" it returns "200 OK" status, update payload = "NO"
#		 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success2"
#		   | Field           | Value|
#		   | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro= |
#		   | associateOID    | G33Q6RRDWRMYD7RS |
#  		 | sectionCategory | Local |
#		   | sectionName     | Taxes |
# 		   | codeValue       | LIT |
#		   | shortName       | Income Tax |
# 		   | amountValue     | 1002.34 |
# 		   | amountValue     | 10.020000 |
# 		   | sectionCategory | State |
# 		   |sectionName      | Taxes |
# 		   | codeValue       | SIT |
# 		   | shortName       | OH State Income Tax |
# 		   | amountValue     | 1002.34 |
# 		   | amountValue     | 28.34 |
# 		 When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success3" for "Success" it returns "200 OK" status, update payload = "NO"
#		 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success3"
#		   | Field           | Value|
#		   | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro= |
#		   | associateOID    | G33Q6RRDWRMY02YE |
#  		 | sectionCategory | Federal |
#		   | sectionName     | Taxes |
# 		   | codeValue       | MEDST |
#		   | shortName       | Medicare SurTax |
# 		   | amountValue     | 11534.99 |
# 		   | amountValue     | 103.81 |
# 		 When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success4" for "Success" it returns "200 OK" status, update payload = "NO"
#		 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success4"
#		   | Field           | Value|
#		   | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro= |
#		   | associateOID    | G33Q6RRDWRMYPKA7 |
#  		 | sectionCategory | State |
#		   | sectionName     | Taxes |
# 		   | codeValue       | VPDI |
#		   | shortName       | HI VPDI Tax |
# 		   | amountValue     | 10019.99 |
# 		   | amountValue     | 4.91 |
# 		 When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success5" for "Success" it returns "200 OK" status, update payload = "NO"
#		 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success5"
#		   | Field           | Value|
#		   | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro= |
#		   | associateOID    | G33Q6RRDWRMYHPV9 |
#  		 | sectionCategory | Local |
#		   | sectionName     | Taxes |
# 		   | codeValue       | WCA |
#		   | shortName       | OR Workers Comp Assessment |
# 		   | amountValue     | 0.660000 |
# 		 When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success6" for "Success" it returns "200 OK" status, update payload = "NO"
#		 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success6"
#		   | Field           | Value|
#		   | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro= |
#		   | associateOID    | G33Q6RRDWRMY4BZE |
#  		 | sectionCategory | Local |
#		   | sectionName     | Taxes |
# 		   | codeValue       | SDT |
#		   | shortName       | School District Tax |
# 		   | amountValue     | 1990.00 |
# 		   | amountValue     | 19.250000 |
# 		 When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success7" for "Success" it returns "200 OK" status, update payload = "NO"
#		 Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success7"
#		   | Field           | Value|
#		   | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro= |
#		   | associateOID    | G33Q6RRDWRMYTFCP |
#  		 | sectionCategory | Local |
#		   | sectionName     | Taxes |
# 		   | codeValue       | MTA |
# 		   | shortName       | MTA Tax |
# 		   | amountValue     | 1.570000 |    		   
		When WEBSERVICES:Attach JSON Response to EMail