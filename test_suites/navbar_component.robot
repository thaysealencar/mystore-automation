*** Settings ***
Documentation     This suite contains all test cases regarding the Navbar Component.
Resource          ../resources/main.txt

*** Test Cases ***
signInLink_verifyIfUserIsTakenToAuthenticationPage
    [Documentation]    This test case verifies if the Sign In link takes the user to the Authentication page.
    [Setup]    Basic Selenium Test Setup
    Click Sign In Link On Navbar
    Sleep    2s
    Verify Authentication Page Loaded
    Sleep    2s
    [Teardown]    Basic Selenium Test Teardown

*** Keywords ***
