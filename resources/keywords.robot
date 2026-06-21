*** Settings ***
Library    SeleniumLibrary
Variables    ../variables/variable.py

*** Keywords ***

Open Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login To Application
    Input Text    id:username    ${USERNAME}
    Input Password    id:password    ${PASSWORD}
    Click Button    xpath://button[contains(text(),'Log in')]
    Capture Page Screenshot    after_login.png

Verify Successful Login
    Wait Until Page Contains Element    xpath://button[contains(text(),'Log out')]    10s

Logout From Application
    Click Button    xpath://button[contains(text(),'Log out')]
    Capture Page Screenshot    logout.png

Close Application
    Close Browser