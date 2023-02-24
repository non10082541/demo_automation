*** Settings ***

Resource            ../resource/keywords.robot
Resource            ./local_keywords.robot
Resource    ../login/local_keywords.robot
Variables           ./local_variables.py

Test Setup            เปิดบราวเซอร์ web และกดปุ่ม log in
Test Teardown         ปิดบราวเซอร์

*** Tasks ***
ทดสอบสร้างสมาชิกใหม่สำเร็จ
    # test step
    สร้างสมาชิกใหม่ สำเร็จ
    # expect output
    พบหน้าจอ Register Success
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Frist name
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Frist name
    # expect output
    พบหน้าจอ Register Unsuccess
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Lastname
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Lastname
    # expect output
    พบหน้าจอ Register Unsuccess
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Username
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Username
    # expect output
    พบหน้าจอ Register Unsuccess
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Password
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Password
    # expect output
    พบหน้าจอ Register Unsuccess
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยกรอก Password และ Confirm Password ไม่ตรงกัน
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยกรอก Password และ Confirm Password ไม่ตรงกัน
    # expect output
    พบข้อความ Password and confirme Password not match
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Telephone
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Telephone
    # expect output
    พบหน้าจอ Register Unsuccess
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Email
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Email
    # expect output
    พบหน้าจอ Register Unsuccess
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Birthday
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอก Birthday
    # expect output
    พบหน้าจอ Register Unsuccess
ทดสอบสร้างสมาชิก ไม่สำเร็จ โดยไม่กรอกข้อมูลทั้งหมด
    # test step
    สร้างสมาชิก ไม่สำเร็จ โดยไม่กรอกข้อมูลทั้งหมด
    # expect output
    พบหน้าจอ Register Unsuccess