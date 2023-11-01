*** Settings ***
Library     SeleniumLibrary


*** Variables ***

*** Keywords ***
Verify Page Loaded
        Wait Until Page Contains    Our Amazing Team

Validate Page Contents
        ${ElementText} =  Get Text    xpath=//*[@id="team"]/div/div[1]/div/h2
        Log  ${ElementText}
        Should Be Equal As Strings    ${ElementText}    OUR AMAZING TEAM    ignore_case=True
        #Element Should Contain    xpath=//*[@id="team"]/div/div[1]/div/h2    OUR AMAZING TEAM