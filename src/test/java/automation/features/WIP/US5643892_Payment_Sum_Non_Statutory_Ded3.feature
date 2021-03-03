#######################################################################
#Webservices US564389 - Test AutoPay Payroll Output API for Associate Payment Summary for Non-Statutory Deductions
#User Story : US564389 (GET)
#User Story Description : Test GET for Associate Payment Summary for Non-Statutory Deductions
#Author: Evelyn Martinez   # Date : 12/6/2016
#Reviewed By :
#######################################################################
Feature: test
	@US564389_GET11
	Scenario: Testing AutoPay Payroll Output API GET for Associate Payment Summary for Non-Statutory Deductions
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success1"
      | Field           | Value                                                                 |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=                          |
      | associateOID    | G33Q6RRDWRMYBCPF                                                      |
      | amountValue     |                                                               6435.86 |
      | sectionCategory | Benefit                                                               |
      | sectionName     | Cafeteria 125 Additional Accidental Death and Dismemberment Insurance |
      | idValue         | L                                                                     |
      | idDescription   | ACC DTH & DISMB                                                       |
      | codeValue       | Deduction                                                             |
      | amountValue     |                                                                    10 |
      | currencyCode    | USD                                                                   |
      | tagCode         | Taxable to the Employee for Federal Income Tax                        |
      | dataTypeCode    | String                                                                |
      | tagValues       | false                                                                 |
      | tagCode         | File Number                                                           |
      | dataTypeCode    | Number                                                                |
      | tagValues       |                                                                    75 |
      | tagCode         | Pay Number                                                            |
      | tagValues       |                                                                     1 |
      | tagCode         | Pay Warning                                                           |
      | dataTypeCode    | String                                                                |
      | tagValues       | Net Cash Over Limit                                                   |
      
      
  @US564389_GET
  Scenario: Testing AutoPay Payroll Output API GET for Associate Payment Summary for Non-Statutory Deductions
    When WEBSERVICES:When we run API command for "Get_Payoutput_LevelDefault_itemID_Test_Success" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success1" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success1"
      | Field           | Value                                                                 |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=                          |
      | associateOID    | G33Q6RRDWRMYBCPF                                                      |
      | amountValue     |                                                               6435.86 |
      | sectionCategory | Benefit                                                               |
      | sectionName     | Cafeteria 125 Additional Accidental Death and Dismemberment Insurance |
      | idValue         | L                                                                     |
      | idDescription   | ACC DTH & DISMB                                                       |
      | codeValue       | Deduction                                                             |
      | amountValue     |                                                                    10.0 |
      | currencyCode    | USD                                                                   |
      | tagCode         | Taxable to the Employee for Federal Income Tax                        |
      | dataTypeCode    | String                                                                |
      | tagValues       | false                                                                 |
      | tagCode         | File Number                                                           |
      | dataTypeCode    | Number                                                                |
      | tagValues       |                                                                    75 |
      | tagCode         | Pay Number                                                            |
      | tagValues       |                                                                     1 |
      | tagCode         | Pay Warning                                                           |
      | dataTypeCode    | String                                                                |
      | tagValues       | Net Cash Over Limit                                                   |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success2" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success2"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYJYWP                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             76 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success3" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success3"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY6BSH                               |
      | amountValue     |                                        6397.56 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Service and Safety Awards                      |
      | idValue         |                                             24 |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             12 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             77 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success4" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success4"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYNMAV                               |
      | amountValue     |                                         805.25 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Employer Paid Bicycle Transportation           |
      | idValue         |                                             25 |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             13 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             78 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success5" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success5"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYD7RS                               |
      | amountValue     |                                         745.45 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Educational Assistance Inclusion               |
      | idValue         | K                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             20 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | sectionCategory | Benefit                                        |
      | sectionName     | Below Market Interest Rate Loan                |
      | idValue         |                                             26 |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             14 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             79 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success6" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success6"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYEQ0A                               |
      | amountValue     |                                         263.53 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Educational Assistance Inclusion               |
      | idValue         | K                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                            2.5 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | sectionCategory | Benefit                                        |
      | sectionName     | Cafeteria 125 Adoption Assistance              |
      | idValue         |                                             28 |
      | idDescription   | ADOPT ASSIST                                   |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             15 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             80 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | BOX                                            |
      | amountValue     |                                         253.69 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             80 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              2 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | Bus                                            |
      | amountValue     |                                         233.83 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             80 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              3 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | CAR                                            |
      | amountValue     |                                         225.34 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             80 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              4 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | FOX                                            |
      | amountValue     |                                         225.34 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             80 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              5 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | TOY                                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success7" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success7"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY4ES1                               |
      | amountValue     |                                         152.53 |
      | currencyCode    | USD                                            |
      | sectionCategory | Benefit                                        |
      | sectionName     | Educational Assistance Inclusion               |
      | idValue         | K                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             25 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | sectionCategory | Benefit                                        |
      | sectionName     | Personal Use of Company Car Full Value         |
      | idValue         |                                             29 |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             16 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             81 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | BOX                                            |
      | amountValue     |                                         186.91 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             81 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              2 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | BUS                                            |
      | amountValue     |                                         166.49 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             81 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              3 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | CAR                                            |
      | amountValue     |                                         161.26 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             81 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              4 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | FOX                                            |
      | amountValue     |                                         154.63 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             81 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              5 |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | TOY                                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success10" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success10"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYFRQZ                               |
      | amountValue     |                                        6475.89 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Cafeteria 125 Taxable Benefit                  |
      | idValue         |                                             30 |
      | idDescription   | OTHER TAXABLE                                  |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             18 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             84 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success11" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success11"
      | Field        | Value                                        |
      | itemID       | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro= |
      | associateOID | G33Q6RRDWRMYCRJJ                             |
      | amountValue  |                                       1730.4 |
      | currencyCode | USD                                          |
      | tagCode      | File Number                                  |
      | dataTypeCode | Number                                       |
      | tagValues    |                                           85 |
      | tagCode      | Pay Number                                   |
      | dataTypeCode | Number                                       |
      | tagValues    |                                            1 |
      | TagCode      | Pay Warning                                  |
      | dataTypeCode | String                                       |
      | tagValues    | Net Cash Over Limit                          |
      | amountValue  |                                      3164.99 |
      | currencyCode | USD                                          |
      | tagCode      | File Number                                  |
      | dataTypeCode | Number                                       |
      | tagValues    |                                           85 |
      | tagCode      | Pay Number                                   |
      | dataTypeCode | Number                                       |
      | tagValues    |                                            2 |
      | TagCode      | Pay Warning                                  |
      | dataTypeCode | String                                       |
      | tagValues    | Net Cash Over Limit                          |
      | amountValue  |                                            0 |
      | currencyCode | USD                                          |
      | tagCode      | File Number                                  |
      | dataTypeCode | Number                                       |
      | tagValues    |                                           85 |
      | tagCode      | Pay Number                                   |
      | dataTypeCode | Number                                       |
      | tagValues    |                                            3 |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success12" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success12"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY9X2Y                               |
      | amountValue     |                                        6419.37 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Cafeteria 125 Tax Exempt Benefit               |
      | idValue         |                                             32 |
      | idDescription   | OTHER COMP                                     |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             19 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             86 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success13" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success13"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYWP6N                               |
      | amountValue     |                                        1610.73 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Cafeteria 125 Short Term Disability            |
      | idValue         |                                             33 |
      | idDescription   | SHORT TERM DISA                                |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             20 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             87 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | BOX                                            |
      | amountValue     |                                        1312.92 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             87 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              2 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | BUS                                            |
      | amountValue     |                                         1211.5 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             87 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              3 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | CAR                                            |
      | amountValue     |                                        1179.74 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             87 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              4 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | FOX                                            |
      | amountValue     |                                        1103.95 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                             87 |
      | TagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              5 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
      | tagCode         | Department Paid                                |
      | dataTypeCode    | String                                         |
      | tagValues       | TOY                                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success14" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success14"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY5EJV                               |
      | amountValue     |                                         809.64 |
      | sectionCategory | Retirement                                     |
      | sectionName     | 403b Plan                                      |
      | idValue         |                                             34 |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             25 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            101 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | amountValue     |                                        1301.16 |
      | currencyCode    | USD                                            |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            101 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              2 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Flagged Pay                                    |
      | amountValue     |                                         2700.2 |
      | currencyCode    | USD                                            |
      | sectionName     | 403b Plan                                      |
      | idValue         |                                             34 |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             50 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | false                                          |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            101 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              3 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Flagged Pay                                    |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success15" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success15"
      | Field           | Value                                                  |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=           |
      | associateOID    | G33Q6RRDWRMYDAG4                                       |
      | amountValue     |                                                  784.7 |
      | sectionCategory | Benefit                                                |
      | sectionName     | Cafeteria 125 Dependent Care Flexible Spending Account |
      | idValue         |                                                     35 |
      | idDescription   | DEPENDENT CARE                                         |
      | codeValue       | Deduction                                              |
      | amountValue     |                                                     21 |
      | currencyCode    | USD                                                    |
      | tagCode         | Taxable to the Employee for Federal Income Tax         |
      | dataTypeCode    | String                                                 |
      | tagValues       | false                                                  |
      | tagCode         | File Number                                            |
      | dataTypeCode    | Number                                                 |
      | tagValues       |                                                    102 |
      | tagCode         | Pay Number                                             |
      | dataTypeCode    | Number                                                 |
      | tagValues       |                                                      1 |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success16" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success16"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYWHQX                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            103 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success17" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success17"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYK2TE                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            104 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success18" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success18"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYQH2E                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            105 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success19" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success19"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYEMZC                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            106 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success20" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success20"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYEPCT                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            801 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success21" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success21"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYHY4B                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            802 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success22" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success22"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY0T06                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            804 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success23" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success23"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYBG0K                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            805 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success24" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success24"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYMN03                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                            806 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success25" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success25"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY1AJV                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                           6973 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success26" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success26"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33S11PXZXTFH5Q1                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                           7431 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success27" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success27"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33S11PXZXTFZXCT                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                           7432 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success28" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success28"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33S11PXZXTF04M2                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                           7433 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success29" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success29"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33S11PXZXTFFEN9                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                           7435 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success30" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success30"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33S11PXZXTF73KR                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                           7436 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success31" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success31"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYQGSK                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                           9500 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success32" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success33"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY24QX                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                           9973 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success33" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success34"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYHPT0                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          11000 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success34" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success34"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYGSCK                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          20001 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success35" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success35"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYSVS3                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          20100 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success36" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success36"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY8VFX                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          30200 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success37" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success37"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY4BZE                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          30300 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success38" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success38"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYC6R3                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          40000 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success39" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success39"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYCK4J                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          41000 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success40" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success40"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY23YB                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          65655 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success41" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success41"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYTHMT                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          80002 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success42" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success42"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYBYMM                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          80003 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success43" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success43"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYYDE6                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                          94444 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success44" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success44"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYTCK1                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100001 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success45" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success45"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYVBBD                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100002 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success46" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success46"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYCA4G                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100003 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success47" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success47"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYNWGS                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100004 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success48" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success48"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY1GCP                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100005 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success49" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success49"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY1NRM                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100006 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success50" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success50"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY14DC                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100007 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success51" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success51"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYY0ZE                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100008 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success52" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success52"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY59TF                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100009 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success53" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success53"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY4SKC                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100011 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success54" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success54"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYKCEK                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100012 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success55" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success55"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYBKXX                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100013 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success56" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success56"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMY60GR                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100014 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success57" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success57"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYT142                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100015 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success58" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success58"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYJ0FP                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100016 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success59" for "Success" it returns "200 OK" status, update payload = "NO"
    Then WEBSERVICES:Verify Response Fields as Values for JSON "Get_PayrollOutput_Success59"
      | Field           | Value                                          |
      | itemID          | BSMJKFWbhqUWJY7wOqKFjswMUs57C6GRL+VK+SwMYro=   |
      | associateOID    | G33Q6RRDWRMYB3R0                               |
      | amountValue     |                                        6461.63 |
      | sectionCategory | Benefit                                        |
      | sectionName     | Awards, Prizes, Gifts                          |
      | idValue         | J                                              |
      | codeValue       | Deduction                                      |
      | amountValue     |                                             11 |
      | currencyCode    | USD                                            |
      | tagCode         | Taxable to the Employee for Federal Income Tax |
      | dataTypeCode    | String                                         |
      | tagValues       | true                                           |
      | tagCode         | File Number                                    |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                         100019 |
      | tagCode         | Pay Number                                     |
      | dataTypeCode    | Number                                         |
      | tagValues       |                                              1 |
      | TagCode         | Pay Warning                                    |
      | dataTypeCode    | String                                         |
      | tagValues       | Net Cash Over Limit                            |

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
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success11" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success12" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success13" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success14" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success15" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success16" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success17" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success18" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success19" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success20" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success21" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success22" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success23" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success24" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success25" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success26" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success27" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success28" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success29" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success30" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success31" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success32" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success33" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success34" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success35" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success36" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success37" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success38" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success39" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success40" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success41" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success42" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success43" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success44" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success45" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success46" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success47" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success48" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success49" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success50" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success51" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success52" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success53" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success54" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success55" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success56" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success57" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success58" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:When we run API command for "Get_PayrollOutput_Success59" for "Success" it returns "200 OK" status, update payload = "NO"
    When WEBSERVICES:Attach JSON Response to EMail
