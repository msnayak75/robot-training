*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    [Documentation]     Setup Section for WebTesting
    Open Browser        ${URL}      ${BROWSER}
    Maximize Browser Window

End Web Test
    [Documentation]     Cleanup Section for WebTesting
    Close Browser
