*** Settings ***
Documentation     This suite contains all test cases from the Navbar Component.
Resource          ../resources/main.txt

*** Test Cases ***
shoppingCartWidget_verifyIfCartIsEmpty
    [Documentation]    This test case verifies if the Shopping Cart is empty, both on the Cart Widget (Top Menu) and the Cart Page.
    [Setup]    Basic Selenium Test Setup
    Sleep    2s
    ${isItEmptyOnWidget}=    Verify If Shopping Cart Widget Is Empty On TopMenu
    Should Be True    ${isItEmptyOnWidget}
    Click Shopping Cart Widget Link On TopMenu
    Verify Cart Page Loaded
    Sleep    2s
    ${isItEmptyOnPage}=    Verify If Shopping Cart Is Empty On Cart Page
    Should Be True    ${isItEmptyOnPage}
    [Teardown]    Basic Selenium Test Teardown

womenTab_onClickLoadsWomenCategoryContent
    [Documentation]    This test case checks if the Women Tab is clicable and also if the Women Category page \ loaded after clicking on the tab.
    [Setup]    Basic Selenium Test Setup
    Click Women Tab On TopMenu
    Sleep    2s
    Verify Women Category Page Loaded
    [Teardown]    Basic Selenium Test Teardown

*** Keywords ***
