*** Settings ***
Library      AppiumLibrary
Resource    ../configs/application-variables.robot


*** Keywords ***
Click Element ${locator} ${retryScale}
    [Documentation]        
	...  Click on a given element  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Visible    ${locator}    ${TIMEOUT}
    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Click Element    ${locator}


Input Text ${locator} ${text} ${retryScale}
    [Documentation]        
	...  Input text on a given text box  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Visible    ${locator}    ${TIMEOUT}
    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Input Text    ${locator}    ${text}


Element Text Should Be ${locator} ${expectedText} ${retryScale}
    [Documentation]        
	...  Check visible text on a given element  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Visible    ${locator}    ${TIMEOUT}
    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Element Text Should Be   ${locator}   ${expectedText}
