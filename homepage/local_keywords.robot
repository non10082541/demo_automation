*** Settings ***
Resource    ../resource/keywords.robot
Variables   ../resource/variables.py
Resource    ./local_setting.robot
Variables   ./local_variables.py

*** Keywords ***
พบหน้าจอ home page
    พบข้อมูล    ${TEXT_HOME_PAGE}
    พบปุ่มกด    ${BTN_LOGIN}