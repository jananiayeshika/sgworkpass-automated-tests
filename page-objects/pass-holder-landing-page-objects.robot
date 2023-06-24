*** Settings ***
Library    AppiumLibrary
Resource   ../common/common-keywords.robot


*** Keywords ***
Click On 'Enter FIN' Tile
    ${enterFinTile}    Set Variable    xpath=//*[@text='Enter FIN']
    Click Element ${enterFinTile} ${SMALL_RETRY_COUNT}