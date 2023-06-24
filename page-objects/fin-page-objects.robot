*** Settings ***
Library    AppiumLibrary
Resource   ../common/common-keywords.robot


*** Keywords ***
Information Text Should Be ${infoText}
    ${infoTextLocator}    Set Variable    xpath=//*[@text='${infoText}']
    Wait Until Element Is Visible    ${infoTextLocator}    ${TIMEOUT}


Name Should Be ${name}
    ${nameLocator}    Set Variable    xpath=//*[@text='${name}']
    Wait Until Element Is Visible    ${nameLocator}    ${TIMEOUT}


FIN Should Be ${fin}
    ${finLocator}    Set Variable    xpath=//*[@text='${fin}']
    Wait Until Element Is Visible    ${finLocator}    ${TIMEOUT}