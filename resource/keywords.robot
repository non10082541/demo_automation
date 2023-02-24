*** Settings ***
Resource         ./setting.robot
Variables        ./variables.py
Library          ./keywords_python.py

*** Keywords ***
เปิดบราวเซอร์
    [Arguments]                    ${URL}
    Open Available Browser         ${URL}       #headless=True 	
    Maximize Browser Window
    Set Selenium Speed    0.5
    Sleep    3

ปิดบราวเซอร์
    Close All Browsers
    Sleep    3

กรอกข้อมูล
    [Arguments]        ${LOCATOR_INPUT}        ${VAR_TEXT}
    Input Text         ${LOCATOR_INPUT}        ${VAR_TEXT}
    Sleep    3
    
พบช่องกรอกข้อมูล 
    [Arguments]                    ${LOCATOR_INPUT}
    Element Should Be Visible      ${LOCATOR_INPUT}
    Sleep    3

พบปุ่มกด 
    [Arguments]                  ${LOCATOR_BTN}
    Element Should Be Visible    ${LOCATOR_BTN}
    Sleep    3

พบข้อมูล
    [Arguments]            ${LOCATOR_INPUT}
    Page Should Contain    ${LOCATOR_INPUT}
    Sleep    3
    
กดปุ่ม
    [Arguments]        ${LOCATOR_INPUT}
    Click Element        ${LOCATOR_INPUT}
    Sleep    3
 
# ----part log in----
เปิดเว็ปบราวเซอร์
    เปิดบราวเซอร์    ${BASE_URL}
    Sleep    3

กดปุ่ม login home page
    กดปุ่ม        ${LOCATOR_BTN_LOGIN_HOME_PAGE}
    Sleep    3
        
เปิดบราวเซอร์ web และกดปุ่ม log in
    เปิดเว็ปบราวเซอร์
    กดปุ่ม login home page   

วันที่ปัจจุบัน
    ${date_now} =    Gen Current Date
    [Return]    ${date_now}
