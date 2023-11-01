*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CUSTOMER_ADD_CUSTOMER_LINK}=      id=new-customer




*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Our Happy Customers

Click Add Customer Link
    [Documentation]   Link to add the Customer Details.
    Click Link    ${CUSTOMER_ADD_CUSTOMER_LINK}

Verify Customer Added Sucessfully
    [Documentation]   Verfication Keywords
    Wait Until Page Contains    Success



