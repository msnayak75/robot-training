*** Settings ***
Resource        ../Resources/FrontOfficeApp.robot
Resource        ../Resources/CommonWeb.robot
Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Variables ***
${URL}      https://automationplayground.com/front-office/
${BROWSER}  chrome


*** Test Cases ***
Should be able to Access "Team" Page TestCase 001
    [Documentation]  Fisrt Web TestCase
    [Tags]      Test1
    Log    Team Page Access Testcases
    FrontOfficeApp.Goto Landing Page
    FrontOfficeApp.Goto Team Page

"Team" Page Should Meet the Requirements Testcase 002
    [Documentation]  Second Web TestCase
    [Tags]      Test2
    Log    Team Page Requirement Testcase
    FrontOfficeApp.Goto Landing Page
    FrontOfficeApp.Goto Team Page
    FrontOfficeApp.Validate Team Page


