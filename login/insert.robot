*** Settings ***

Resource            ../resource/keywords.robot
Resource            ./local_keywords.robot
Variables           ./local_variables.py

Test Setup            เปิดบราวเซอร์ web และกดปุ่ม log in
Test Teardown         ปิดบราวเซอร์

*** Tasks ***

ทดสอบ login สำเร็จ
    # test step
    login สำเร็จ
    # expect output
    พบหน้าจอ My Profile


ทดสอบ login ไม่สำเร็จ
    # test step
    login ไม่สำเร็จ
    # expect output
    พบข้อความ username and password not match    

ทดสอบ logout สำเร็จ
    # test step
    login สำเร็จ
    พบหน้าจอ My Profile
    logout สำเร็จ

    # expect output
    พบหน้าจอ Login