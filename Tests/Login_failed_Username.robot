*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${USERNAME TB}   //*[@id="username"]
${PASSWORD TB}  //*[@id="password"]
${LOGIN BUTTON}    //*[@id="login"]/button
${LOGOUT BUTTON}    //*[@id="content"]/div/a/i

*** Test Cases ***
case 1 : Login Success
    Open Browser  http://the-internet.herokuapp.com/login  Chrome
    Login  tomholland  Password!

*** Keywords ***
Login
    [Arguments]     ${USERNAME}  ${PASSWORD}
    Input Text      ${USERNAME TB}  ${USERNAME}
    Sleep  3s
    Input Text      ${PASSWORD TB}  ${PASSWORD}
    Sleep  3s
    Click Element   ${LOGIN BUTTON}
    Sleep  3s
    Click Element   ${LOGOUT BUTTON}
    Close