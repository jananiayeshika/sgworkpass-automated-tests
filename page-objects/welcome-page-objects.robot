*** Settings ***
Library    AppiumLibrary
Resource   ../common/common-keywords.robot


*** Keywords ***
Click On 'More on SGWorkPass' External Link Icon
    ${moreOnSgworkpassLink}    Set Variable    xpath=//*[contains(@text, 'More on SGWorkPass')]
    Click Element ${moreOnSgworkpassLink} ${SMALL_RETRY_COUNT}


Browser Url Should be ${expectedUrl}
    ${urlBarLocator}    Set Variable    id=com.android.chrome:id/url_bar
    Element Text Should Be ${urlBarLocator} ${expectedUrl} ${SMALL_RETRY_COUNT}
    

Click On 'I am an MOM-issued pass holder' Radio Button
    ${momPassHolderRadioButton}    Set Variable    xpath=//*[@text='I am an MOM-issued pass holder']
    Click Element ${momPassHolderRadioButton} ${SMALL_RETRY_COUNT}


Click On 'Confirm' Button
    ${gotItButton}    Set Variable    xpath=//*[@text='Confirm']
    Click Element ${gotItButton} ${SMALL_RETRY_COUNT}