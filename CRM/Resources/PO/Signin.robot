*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGIN_EMAIL_ID_INPUT}=    id=email-id
${SIGIN_PASSWORD_INPUT}=    id=password
${SIGIN_SUBMIT_BUTTON}=     id=submit-id



*** Keywords ***
Login With Valid Crendentils
    [Arguments]     ${Email}        ${Password}
    Input Text      ${SIGIN_EMAIL_ID_INPUT}   ${Email}
    Input Text      ${SIGIN_PASSWORD_INPUT}   ${Password}
    Click Button    ${SIGIN_SUBMIT_BUTTON}

Verify Page Loaded
    [Arguments]    ${input_string}
    Wait Until Page Contains    ${input_string}