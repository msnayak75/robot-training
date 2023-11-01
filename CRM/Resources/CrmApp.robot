*** Settings ***
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/LoggedOut.robot
Resource    ../Resources/PO/Signin.robot
Resource    ../Resources/PO/TopNav.robot


*** Variables ***


*** Keywords ***
Goto Home Page
    [Documentation]   Navigate to Home Page
    Home.Navigate To
    Home.Verify Page Loaded

Login With Valid Crendentils
    [Documentation]   Login with email and Password
    [Arguments]     ${email}       ${password}
    TopNav.Click "Sign In" Link
    TopNav.Verify Page Loaded    Login
    Signin.Login With Valid Crendentils    ${email}    ${password}
    Customers.Verify Page Loaded


AddCustomer
    [Documentation]    Adding a new Customer
    [Arguments]   ${Email}  ${FirstName}  ${LastName}  ${City}  ${State}  ${Gender}
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Fill Customer Details  ${Email}  ${FirstName}  ${LastName}  ${City}  ${State}  ${Gender}
    AddCustomer.Click Submit Button
    Customers.Verify Customer Added Sucessfully


Sign Out
    [Documentation]     Signout of the Site
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded

