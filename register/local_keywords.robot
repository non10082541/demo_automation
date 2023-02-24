*** Settings ***
Resource    ../resource/keywords.robot
Variables   ../resource/variables.py
Resource    ./local_setting.robot
Variables   ./local_variables.py

*** Keywords ***
กดปุ่ม Register
    กดปุ่ม    ${LOCATOR_BTN_REGISTER}

พบข้อความ Register
    พบข้อมูล    ${TEXT_REGISTER}
พบช่องกรอก Frist name
    พบช่องกรอกข้อมูล    ${LOCATOR_FRIST_NAME}
พบช่องกรอก Last name
    พบช่องกรอกข้อมูล    ${LOCATOR_LAST_NAME}
พบช่องกรอก Nick name
    พบช่องกรอกข้อมูล    ${LOCATOR_NICK_NAME}
พบช่องกรอก Username
    พบช่องกรอกข้อมูล    ${LOCATOR_USERNAME}
พบช่องกรอก Password 
    พบช่องกรอกข้อมูล    ${LOCATOR_PASSWORD}
พบช่องกรอก Confirme Password
    พบช่องกรอกข้อมูล    ${LOCATOR_CONFIRME_PASSWORD}
พบช่องกรอก Telephone 
    พบช่องกรอกข้อมูล    ${LOCATOR_TELEPHONE}
พบช่องกรอก Address
    พบช่องกรอกข้อมูล    ${LOCATOR_ADDRESS}
พบช่องกรอก Email
    พบช่องกรอกข้อมูล    ${LOCATOR_EMAIL}
พบช่องกรอก Birthday 
    พบช่องกรอกข้อมูล    ${LOCATOR_BIRTHDAY}
พบช่องกรอก Rule
    พบช่องกรอกข้อมูล    ${LOCATOR_RULE}
พบปุ่มกด Register
    พบปุ่มกด    ${LOCATOR_BTN_REGISTER_PAGE}

พบหน้าจอ Register
    พบข้อความ Register
    พบช่องกรอก Frist name
    พบช่องกรอก Last name
    พบช่องกรอก Nick name
    พบช่องกรอก Username
    พบช่องกรอก Password
    พบช่องกรอก Confirme Password
    พบช่องกรอก Telephone
    พบช่องกรอก Address
    พบช่องกรอก Email
    พบช่องกรอก Birthday
    พบช่องกรอก Rule
    พบปุ่มกด Register

# ----------------------------------
กรอกข้อมูล Frist name
    กรอกข้อมูล     ${LOCATOR_FRIST_NAME}    ${TEXT_FRIST_NAME}
กรอกข้อมูล Last name
    กรอกข้อมูล     ${LOCATOR_LAST_NAME}    ${TEXT_LAST_NAME}
กรอกข้อมูล Nick name
    กรอกข้อมูล     ${LOCATOR_NICK_NAME}    ${TEXT_NICK_NAME}
กรอกข้อมูล Username
    กรอกข้อมูล     ${LOCATOR_USERNAME}    ${TEXT_USERNAME}
กรอกข้อมูล Password
    กรอกข้อมูล     ${LOCATOR_PASSWORD}    ${TEXT_PASSWORD}
กรอกข้อมูล Confirme Password
    กรอกข้อมูล     ${LOCATOR_CONFIRME_PASSWORD}    ${TEXT_CONFIRME_PASSWORD}
กรอกข้อมูล Telephone
    กรอกข้อมูล     ${LOCATOR_TELEPHONE}    ${TEXT_TELEPHONE}
กรอกข้อมูล Address
    กรอกข้อมูล     ${LOCATOR_ADDRESS}    ${TEXT_ADDRESS}
กรอกข้อมูล Email
    กรอกข้อมูล     ${LOCATOR_EMAIL}    ${TEXT_EMAIL}
กรอกข้อมูล Birthday
    ${TEXT_BIRTHDAY} =     วันที่ปัจจุบัน
    กรอกข้อมูล    ${LOCATOR_BIRTHDAY}    ${TEXT_BIRTHDAY}
กดปุ่ม Register Page
    กดปุ่ม    ${LOCATOR_BTN_REGISTER_PAGE}
สร้างสมาชิกใหม่ สำเร็จ
    กดปุ่ม Register
    กรอกข้อมูล Frist name
    กรอกข้อมูล Last name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Username
    กรอกข้อมูล Password
    กรอกข้อมูล Confirme Password
    กรอกข้อมูล Telephone
    กรอกข้อมูล Address
    กรอกข้อมูล Email
    กรอกข้อมูล Birthday
    กดปุ่ม Register Page

พบข้อความ Register Success
    พบข้อมูล    ${TEXT_REGISTER_SUCCESS}
พบปุ่มกด Login Home Page
    พบปุ่มกด    ${LOCATOR_BTN_LOG_IN_REGISTER_PAGE}
พบหน้าจอ Register Success
    พบข้อความ Register Success
    พบปุ่มกด Login Home Page

# -----------------------------------------
สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Frist name
    กดปุ่ม Register
    กรอกข้อมูล Last name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Username
    กรอกข้อมูล Password
    กรอกข้อมูล Confirme Password
    กรอกข้อมูล Telephone
    กรอกข้อมูล Address
    กรอกข้อมูล Email
    กรอกข้อมูล Birthday
    กดปุ่ม Register Page

พบหน้าจอ Register Unsuccess
    พบข้อความ Register
    พบปุ่มกด Register

สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Lastname
    กดปุ่ม Register
    กรอกข้อมูล Frist name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Username
    กรอกข้อมูล Password
    กรอกข้อมูล Confirme Password
    กรอกข้อมูล Telephone
    กรอกข้อมูล Address
    กรอกข้อมูล Email
    กรอกข้อมูล Birthday
    กดปุ่ม Register Page
สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Username
    กดปุ่ม Register
    กรอกข้อมูล Frist name
    กรอกข้อมูล Last name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Password
    กรอกข้อมูล Confirme Password
    กรอกข้อมูล Telephone
    กรอกข้อมูล Address
    กรอกข้อมูล Email
    กรอกข้อมูล Birthday
    กดปุ่ม Register Page
สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Password
    กดปุ่ม Register
    กรอกข้อมูล Frist name
    กรอกข้อมูล Last name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Username
    กรอกข้อมูล Confirme Password
    กรอกข้อมูล Telephone
    กรอกข้อมูล Address
    กรอกข้อมูล Email
    กรอกข้อมูล Birthday
    กดปุ่ม Register Page

กรอกข้อมูล Confirme Password ไม่ตรงกัน
    กรอกข้อมูล     ${LOCATOR_CONFIRME_PASSWORD}    ${TEXT_CONFIRME_PASSWORD_UNLIKE}
สร้างสมาชิก ไม่สำเร็จ โดยกรอก Password และ Confirm Password ไม่ตรงกัน
    กดปุ่ม Register
    กรอกข้อมูล Frist name
    กรอกข้อมูล Last name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Username
    กรอกข้อมูล Password
    กรอกข้อมูล Confirme Password ไม่ตรงกัน
    กรอกข้อมูล Telephone
    กรอกข้อมูล Address
    กรอกข้อมูล Email
    กรอกข้อมูล Birthday
    กดปุ่ม Register Page
พบข้อความ Password and confirme Password not match
    พบข้อมูล    ${TEXT_PASSWORD_NOT_MATCH}
สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Telephone
    กดปุ่ม Register
    กรอกข้อมูล Frist name
    กรอกข้อมูล Last name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Username
    กรอกข้อมูล Password
    กรอกข้อมูล Confirme Password
    กรอกข้อมูล Address
    กรอกข้อมูล Email
    กรอกข้อมูล Birthday
    กดปุ่ม Register Page
สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Email
    กดปุ่ม Register
    กรอกข้อมูล Frist name
    กรอกข้อมูล Last name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Username
    กรอกข้อมูล Password
    กรอกข้อมูล Confirme Password
    กรอกข้อมูล Telephone
    กรอกข้อมูล Address
    กรอกข้อมูล Birthday
    กดปุ่ม Register Page
สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Birthday
    กดปุ่ม Register
    กรอกข้อมูล Frist name
    กรอกข้อมูล Last name
    กรอกข้อมูล Nick name
    กรอกข้อมูล Username
    กรอกข้อมูล Password
    กรอกข้อมูล Confirme Password
    กรอกข้อมูล Telephone
    กรอกข้อมูล Address
    กรอกข้อมูล Email
    กดปุ่ม Register Page
สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอกข้อมูลทั้งหมด
    กดปุ่ม Register
    กดปุ่ม Register Page