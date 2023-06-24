*** Settings ***
Library     AppiumLibrary
Resource    ../common/common-keywords.robot


*** Keywords ***
Click On 'Got It' Button
    ${gotItButton}    Set Variable    xpath=//*[@text='Got It']
    Click Element ${gotItButton} ${SMALL_RETRY_COUNT}


Check ${errorMessage} Error Message Is Visible
    ${errorMessageLocator}    Set Variable    xpath=//*[@text='${errorMessage}']
    Wait Until Element Is Visible    ${errorMessageLocator}    ${TIMEOUT}