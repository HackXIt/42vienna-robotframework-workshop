*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login_page.resource

Suite Setup    Open Browser To SauceDemo
Suite Teardown    Close Browser

*** Test Cases ***
Login With Standard User
    Enter Username    standard_user
    Enter Password    secret_sauce
    Click Login Button
    Get Url    ==    https://www.saucedemo.com/inventory.html

Login With Locked Out User
    Enter Username    locked_out_user
    Enter Password    secret_sauce
    Click Login Button
    Get Text    css=.error-message-container    *=    locked out
