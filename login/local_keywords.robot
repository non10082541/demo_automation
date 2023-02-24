*** Settings ***
Resource    ../resource/keywords.robot
Variables   ../resource/variables.py
Resource    ./local_setting.robot
Variables   ./local_variables.py

*** Keywords ***
พบหน้าจอ Login
    พบข้อมูล    ${TEXT_LOGIN_PAGE}
    พบช่องกรอกข้อมูล    ${LOCATOR_USERNAME}
    พบช่องกรอกข้อมูล    ${LOCATOR_PASSWORD}
    พบปุ่มกด    ${LOCATOR_BTN_LOGIN}
    พบปุ่มกด    ${LOCATOR_BTN_REGISTER}


กรอก USERNAME
    กรอกข้อมูล    ${LOCATOR_USERNAME}    ${TEXT_USERNAME}

กรอก PASSWORD
    กรอกข้อมูล    ${LOCATOR_PASSWORD}    ${TEXT_PASSWORD}  

กดปุ่ม Login    
    กดปุ่ม    ${LOCATOR_BTN_LOGIN}
login สำเร็จ
    # Sleep    5
    กรอก USERNAME
    กรอก PASSWORD
    กดปุ่ม Login

พบข้อมูล Frist name
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Last name
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Nick name
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Username
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Password
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Telephone
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Address
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Email
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Birthday
    พบข้อมูล    ${TEXT_FRIST_NAME}
พบข้อมูล Rule
    พบข้อมูล    ${TEXT_FRIST_NAME}

พบปุ่ม logout
    พบปุ่มกด    ${LOCATOR_BTN_LOGOUT}
พบหน้าจอ My Profile
    พบข้อมูล Frist name
    พบข้อมูล Last name
    พบข้อมูล Nick name
    พบข้อมูล Username
    พบข้อมูล Password
    พบข้อมูล Telephone
    พบข้อมูล Address
    พบข้อมูล Email
    พบข้อมูล Birthday
    พบข้อมูล Rule
    พบปุ่ม logout

login ไม่สำเร็จ
    กรอก USERNAME
    กดปุ่ม Login

พบข้อความ username and password not match
    พบข้อมูล    ${TEXT_FAIL} 

กดปุ่ม logout
    กดปุ่ม    ${LOCATOR_BTN_LOGOUT}
logout สำเร็จ
    กดปุ่ม logout