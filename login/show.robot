*** Settings ***

Resource            ../resource/keywords.robot
Resource            ./local_keywords.robot
Variables           ./local_variables.py

Test Setup            เปิดบราวเซอร์ web และกดปุ่ม log in
Test Teardown         ปิดบราวเซอร์

*** Tasks ***

ทดสอบแสดงหน้าจอ Log in สำเร็จ
    # test step

    # expect output
    พบหน้าจอ Login

