*** Settings ***
Documentation     This suite contains all test cases from the Authentication Page.
Resource          ../resources/main.txt

*** Test Cases ***
signInButton_submitFormWithValidCredentials
    [Documentation]    This test case verifies if the user is able to log into the application using valid credentials.
    [Setup]    Logged Out User On Authentication Page Setup
    ${email}=    set variable    thayse.m.alencar@gmail.com
    ${password}=    set variable    arctic
    Populate Login Form On Authentication Page    ${email}    ${password}
    Click Sign In Button On Login Form On Authentication Page
    Sleep    2s
    ${isUserLoggedIn}=    Is User Logged In
    Should Be True    ${isUserLoggedIn}    Fail= The user is not logged in.
    [Teardown]    Basic Selenium Test Teardown

*** Keywords ***
