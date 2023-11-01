*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_PAGE_LABEL}=     Add Customer


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${ADDCUSTOMER_PAGE_LABEL}

Fill Customer Details
    [Documentation]     To Fill Customer Details and Submit
    [Arguments]   ${Email}  ${FirstName}  ${LastName}  ${City}   ${State}  ${Gender}
    Input Text    id=EmailAddress    ${Email}
    Input Text    id=FirstName       ${FirstName}
    Input Text    id=LastName        ${LastName}
    Input Text    id=City            ${City}
    Select From List By Value    id=StateOrRegion       ${State}
    Select Radio Button    gender    ${Gender}
    Select Checkbox    promos-name

Click Submit Button
    [Documentation]     Submit the Customer Details
    Click Button    Submit

