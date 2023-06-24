*** Settings ***
Library    AppiumLibrary
Resource   ../common/common-keywords.robot


*** Keywords ***
Input FIN ${fin}
    ${finTextBox}    Set Variable    xpath=//android.widget.EditText
    Input Text ${finTextBox} ${fin} ${SMALL_RETRY_COUNT}


Click On 'Enter' Button
    ${enterButton}    Set Variable    xpath=//*[@text='Enter']
    Click Element ${enterButton} ${SMALL_RETRY_COUNT}


Error Prompt Title Should Be ${errorTitle}
    ${errorTitleLocator}    Set Variable    xpath=//*[@text='${errorTitle}']
    Wait Until Element Is Visible    ${errorTitleLocator}    ${TIMEOUT}


Error Prompt Message Should Be ${errorMessage}
    ${errorMessageLocator}    Set Variable    xpath=//*[@text='${errorMessage}']
    Wait Until Element Is Visible    ${errorMessageLocator}    ${TIMEOUT}