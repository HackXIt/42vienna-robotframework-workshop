*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login_page.resource

Suite Setup       Open SauceDemo
Suite Teardown    Close SauceDemo

*** Test Cases ***
Login With Standard User
    Login With Credentials    standard_user    secret_sauce
    Get Url    ==    https://www.saucedemo.com/inventory.html
    Go To    ${BASE_URL}

Login With Locked Out User
    Login With Credentials    locked_out_user    secret_sauce
    Get Text    css=.error-message-container    *=    locked out
