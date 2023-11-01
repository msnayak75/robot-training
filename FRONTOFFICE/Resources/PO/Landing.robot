*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${LANDING_PAGE_LOCATOR}=  id=mainNav


*** Keywords ***
Navigate To
    Go To   ${URL}
    Wait Until Page Contains    Welcome To Our Studio!

Verify Page Loaded
    Wait Until Page Contains Element    ${LANDING_PAGE_LOCATOR}
