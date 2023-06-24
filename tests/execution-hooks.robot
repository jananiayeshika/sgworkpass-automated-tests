*** Settings ***
Library     AppiumLibrary
Resource    ../page-objects/welcome-page-objects.robot
Resource    ../page-objects/common-page-objects.robot


*** Variables ***
${APK_FILE_NAME}               sgworkpass-sit-v2.4.0.95
${ANDROID_DEVICE_NAME}         Pixel 3a XL
${ANDROID_PLATFORM_VERSION}    12.0


*** Keywords ***
Launch SGWorkPass Android Application
    Open Application	127.0.0.1:4723    platformName=Android	platformVersion=${ANDROID_PLATFORM_VERSION}	
    ...    deviceName=${ANDROID_DEVICE_NAME}    automationName=UiAutomator2    
    ...    app=${EXECDIR}/apps/android/${APK_FILE_NAME}.apk    appPackage=sg.gov.mom.sgworkpass
    ...    appActivity=MainActivity    autoGrantPermissions=true    noReset=true    fullReset=false
    Set Appium Timeout    30 s