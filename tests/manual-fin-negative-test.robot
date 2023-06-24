*** Settings ***
Library     AppiumLibrary

Resource    execution-hooks.robot
Resource    ../page-objects/pass-holder-landing-page-objects.robot
Resource    ../page-objects/enter-fin-page-objects.robot
Resource    ../page-objects/fin-page-objects.robot
Resource    ../page-objects/announcements-page-objects.robot

Test Setup       Launch SGWorkPass Android Application
Test Teardown    Quit Application


*** Variables ***
${NO_RECORD_FOUND_ERROR_TITLE}      No Record Found
${NO_RECORD_FOUND_ERROR_MESSAGE}    This app only works for checking MOM-issued passes.\n\nFor MOM-issued Special Passes, you will need to scan the QR code on your card to check pass details and validity.
${INCORRECT_FIN_ERROR_MESSAGE}      Incorrect FIN. Please enter the FIN in the correct format, e.g. G1234567A.


*** Keywords ***
Enter FIN ${fin} And Check The Error Prompt
    Click On 'Enter FIN' Tile
    Input FIN ${fin}
    Click On 'Enter' Button
    Error Prompt Title Should Be ${NO_RECORD_FOUND_ERROR_TITLE}
    Error Prompt Message Should Be ${NO_RECORD_FOUND_ERROR_MESSAGE}


*** Test Cases ***
Verify That An EPOL Pass Holder Can See The 'No Record Found' Error Prompt When Enter The Special Pass FIN
    [Tags]    SGWP-TC-0076    Regression

    Enter FIN M3000018X And Check The Error Prompt


Verify That An WPOL Pass Holder Can See The 'No Record Found' Error Prompt When Enter The Special Pass FIN
    [Tags]    SGWP-TC-0077    Regression

    Enter FIN F3000018T And Check The Error Prompt


Verify That A User Can See An Error Message After Entering The Incorrect FIN    
    [Tags]    SGWP-TC-0078    Regression

    Click On 'Enter FIN' Tile
    Input FIN A1234567Q
    Click On 'Enter' Button
    Check ${INCORRECT_FIN_ERROR_MESSAGE} Error Message Is Visible
