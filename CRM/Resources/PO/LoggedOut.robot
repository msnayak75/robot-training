*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGGED_OUT_PAGE_LABEL}=  Signed Out




*** Keywords ***
Verify Page Loaded
   Wait Until Page Contains    ${LOGGED_OUT_PAGE_LABEL}