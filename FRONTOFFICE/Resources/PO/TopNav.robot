*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_LINK} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Select the Team Page
        [Documentation]     Select the TEam Page
        Click Link   ${TOPNAV_TEAM_LINK}
        Sleep    2s

