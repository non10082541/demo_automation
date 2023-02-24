*** Settings ***

Resource            ../resource/keywords.robot
Resource            ./local_keywords.robot
Variables           ./local_variables.py

Test Setup            เปิดบราวเซอร์ web และกดปุ่ม log in
Test Teardown         ปิดบราวเซอร์

*** Tasks ***

พบหน้าจอ Register ครบถ้วน
    # test step
    กดปุ่ม Register
    # expect output
    พบหน้าจอ Register

