*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SIGIN_LINK}=   css=#SignIn
${TOPNAV_SIGN_OUT_LINK}=   Sign Out



*** Keywords ***
Click "Sign In" Link
    [Documentation]     Signin Link
    Click Link    ${TOPNAV_SIGIN_LINK}

Click "Sign Out" Link
    [Documentation]     Signout  Link
    Click Link    ${TOPNAV_SIGN_OUT_LINK}


Verify Page Loaded
    [Arguments]    ${input_string}
    Wait Until Page Contains    ${input_string}