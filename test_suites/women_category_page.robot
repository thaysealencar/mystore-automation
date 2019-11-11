*** Settings ***
Documentation     This suite contains all test cases from the Women Category Page and its parts (side Menu and Center Area / content area,)
Resource          ../resources/main.txt

*** Test Cases ***
sideMenu_expandTheTopsSection
    [Documentation]    This test case verifies if the Tops Section of the side menu is expandable.
    [Setup]    Logged Out User On Women Category Page Setup
    Click Tops Section On Side Menu On Women Category Page
    Sleep    2s
    Verify Tops Section Expanded On Side Menu On Women Category Page
    [Teardown]    Basic Selenium Test Teardown

sideMenu_expandTheDressesSection
    [Documentation]    This test case verifies if the Dresses Section of the side menu is expandable.
    [Setup]    Logged Out User On Women Category Page Setup
    Click Dresses Section On Side Menu On Women Category Page
    Sleep    2s
    Verify Dresses Section Expanded On Side Menu On Women Category Page
    [Teardown]    Basic Selenium Test Teardown

centerArea_verifyThatTheNumberOfPageProductsIsCorrect
    [Documentation]    This test case verifies if the number of products displayed on the page is correct. There should be 7 products.
    ...
    ...    1- Checks if there are only N=7 products listed on othe page.
    ...
    ...    2- Checks if the message "There are N products" is displayed AND correct, that is, the N value should match with the number of products on the page.
    [Setup]    Logged Out User On Women Category Page Setup
    ${thereAre7Products}=    Verify If There Are N Products Displayed On Women Category Page    7
    Should Be True    ${thereAre7Products}    Fail=The number of products on the page is different than 7.
    Verify If Heading Counter Is Correct On Women Category Page    7
    [Teardown]    Basic Selenium Test Teardown

centerArea_addItemToTheCartAndVerifyCartIsUpdated
    [Documentation]    This test case checks if the shopping cart gets updated once the user adds an item to it.
    ...
    ...    1- Gets the number of items in the cart before selecting any product.
    ...
    ...    2- Clicks on the "Add To Cart" button from the Quick Preview of the product P.
    ...
    ...    3- Gets the number of items in the cart after selecting a product.
    ...
    ...    4- Compares the values obtained from steps 1 and 3 to verify if the shopping cart has been updated.
    [Setup]    Logged Out User On Women Category Page Setup
    ${itemsInShoppingCartBefore}=    Execute Javascript    document.querySelector("div.shopping_cart>a>span.ajax_cart_quantity").innerText
    Click Add To Cart Button Of The Product P From Quick View On Women Category Page    1
    Sleep    2s
    ${itemsInShoppingCartAfter}=    Get Text    css=div.shopping_cart>a>span.ajax_cart_quantity
    ${result}=    Verify If Shopping Cart Was Updated On Women Category Page    ${itemsInShoppingCartBefore}    ${itemsInShoppingCartAfter}
    Should Be True    ${result}
    [Teardown]    Basic Selenium Test Teardown

*** Keywords ***
