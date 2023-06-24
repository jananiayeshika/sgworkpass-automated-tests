*** Settings ***
Library    AppiumLibrary
Resource   ../common/common-keywords.robot
Resource   common-page-objects.robot


*** Keywords ***
Navigate Through The Announcements
    Click On 'Next' Button
    Click On 'Got It' Button


Click On 'Next' Button
    ${nextButton}    Set Variable    xpath=//*[@text='Next']
    Click Element ${nextButton} ${SMALL_RETRY_COUNT}