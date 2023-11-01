*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test
    [Documentation]   Test Setup Section

    #Set Selenium Speed    .2s
    #Set Selenium Timeout    5s
    Open Browser    ${URL}   ${BROWSER}
    Sleep           3s
    Wait Until Page Contains    Customers Are Priority One

End Web Test
    [Documentation]   Test Clean Section
    Close Browser



