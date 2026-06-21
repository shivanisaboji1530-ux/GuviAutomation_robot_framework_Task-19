*** Settings ***
Resource    ../resources/keywords.robot

Suite Setup       Open Application
Suite Teardown    Close Application

*** Test Cases ***

Verify User Login Functionality
    [Documentation]    Verify user can login and logout successfully

    Login To Application
    Verify Successful Login
    Logout From Application