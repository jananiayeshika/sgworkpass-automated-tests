*** Settings ***
Library    AppiumLibrary
Resource   execution-hooks.robot

Test Setup       Install And Launch SGWorkPass Android Application
Test Teardown    Reinstall SGWorkPass Android Application And Navigate To Passholder Landing Screen


*** Keywords ***
Install And Launch SGWorkPass Android Application
    Open Application	127.0.0.1:4723    platformName=Android	platformVersion=${ANDROID_PLATFORM_VERSION}	
    ...    deviceName=${ANDROID_DEVICE_NAME}    automationName=UiAutomator2    
    ...    app=${EXECDIR}/apps/android/${APK_FILE_NAME}.apk    appPackage=sg.gov.mom.sgworkpass
    ...    appActivity=MainActivity    autoGrantPermissions=true    noReset=false    fullReset=true
    Set Appium Timeout    30 s


Reinstall SGWorkPass Android Application And Navigate To Passholder Landing Screen
    Quit Application
    Open Application	127.0.0.1:4723    platformName=Android	platformVersion=${ANDROID_PLATFORM_VERSION}	
    ...    deviceName=${ANDROID_DEVICE_NAME}    automationName=UiAutomator2    
    ...    app=${EXECDIR}/apps/android/${APK_FILE_NAME}.apk    appPackage=sg.gov.mom.sgworkpass
    ...    appActivity=MainActivity    autoGrantPermissions=true    noReset=true    fullReset=false
    Set Appium Timeout    30 s
    Click On 'Got It' Button
    Click On 'I am an MOM-issued pass holder' Radio Button
    Click On 'Confirm' Button
    Quit Application


*** Test Cases ***
Verify That A User Can Navigate To SGWP Web Page In MOM Website By Tapping On 'More on SGWorkPass' External Link Icon
...    [Tags]    SGWP-TC-0008
    
    Click On 'More on SGWorkPass' External Link Icon
    Browser Url Should be mom.gov.sg/eservices/sgworkpass
    Go Back