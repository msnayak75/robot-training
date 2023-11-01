*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/Team.robot
Resource    ./PO/TopNav.robot


*** Variables ***


*** Keywords ***
Goto Landing Page
    [Documentation]    Open the Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded


Goto Team Page
    [Documentation]     Select Team page
    TopNav.Select the Team Page
    Team.Verify Page Loaded

Validate Team Page
    [Documentation]         Valid Team Page Contents
    Team.Validate Page Contents

