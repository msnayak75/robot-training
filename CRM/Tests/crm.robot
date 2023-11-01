*** Setting ***
Documentation    Sample Testcase for Robot
Library        SeleniumLibrary
Resource       ../Resources/common.robot
Resource       ../Resources/CrmApp.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Variables  ***
${BROWSER}                   chrome
${URL}                       https://automationplayground.com/crm/
${VALID_EMAIL_LOGIN}         admin@robotframeworktutorail.com
${VALID_PASSWORD}            test@123
${CUSTOMER_EMAIL_ADDRESS}    msnayak@outlook.com
${CUSTOMER_FIRSTNAME}        Santhosh
${CUSTOMER_LASTNAME}         Nayak
${CUSTOMER_CITY}             Bengalore
${CUSTOMER_STATE}            TX
${CUSTOMER_GENDER}           male


*** Test Cases ***
CRM_Testcase_001
    [Documentation]    Sample Testcase for Browser
    [Tags]              001   Demo
    Log    Executing CRM Testcase1    console=True

    CrmApp.Goto Home Page
    CrmApp.Login With Valid Crendentils     ${VALID_EMAIL_LOGIN}     ${VALID_PASSWORD}
    CrmApp.AddCustomer  ${CUSTOMER_EMAIL_ADDRESS}  ${CUSTOMER_FIRSTNAME}  ${CUSTOMER_LASTNAME}  ${CUSTOMER_CITY}   ${CUSTOMER_STATE}  ${CUSTOMER_GENDER}
    CrmApp.Sign Out

    Log    End Of CRM Testcase1    console=True




*** Keywords  ***
