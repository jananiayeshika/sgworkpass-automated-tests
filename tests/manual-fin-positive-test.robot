*** Settings ***
Library     AppiumLibrary

Resource    execution-hooks.robot
Resource    ../page-objects/pass-holder-landing-page-objects.robot
Resource    ../page-objects/enter-fin-page-objects.robot
Resource    ../page-objects/fin-page-objects.robot
Resource    ../page-objects/announcements-page-objects.robot

Test Setup       Launch SGWorkPass Android Application
Test Teardown    Quit Application

Test Template    Enter FIN ${fin} And Check The Name Is ${name}


*** Variables ***
${INFO_TEXT}    To check pass details and validity,\nscan the QR code on an MOM-issued pass.


*** Keywords ***
Enter FIN ${fin} And Check The Name Is ${name}
    Click On 'Enter FIN' Tile
    Input FIN ${fin}
    Click On 'Enter' Button
    Information Text Should Be ${INFO_TEXT}
    Name Should Be ${name}
    FIN Should Be ${fin}


*** Test Cases ***    FIN    Name
Verify That A WPOL Pass Holder Can See The Name And FIN After Entering The Valid FIN    M1000090K    ABC
    [Tags]    SGWP-TC-0069    Smoke

Verify That An EPOL Pass Holder Can See The Name And FIN After Entering The Valid FIN    M1000092T    ABC
    [Tags]    SGWP-TC-0070    Smoke

Verify That An IPA Pass Holder Can See The Name And FIN After Entering The Valid FIN    M1000088W    ABC
    [Tags]    SGWP-TC-0071    Smoke

# Verify That A WPOL Pass Holder Can See The Name And FIN After Entering An Invalid FIN    M1000091K    ABC
#     [Tags]    SGWP-TC-0072    Regression

Verify That An EPOL Pass Holder Can See The Name And FIN After Entering An Invalid FIN    F3000025X    ABC
    [Tags]    SGWP-TC-0073    Smoke