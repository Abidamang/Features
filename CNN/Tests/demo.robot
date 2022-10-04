*** Settings ***
Documentation    CNN Web Testing

Resource    ../Resources/cnn.robot
Resource    ../Resources/Common.robot

Test Setup      Common.Begin Web Test
Test Teardown   Common.End Web Test


*** Variables ***
${START_URL} =  https://www.CNN.com
${BROWSER} =   edge


*** Test Cases ***
Vists CNN Web Site
    [Documentation]   Test 1- Visting CNN Website and Verify Login Page
    [Tags]      Smoke

    cnn.User Vists CNN Site and Login
    cnn.Login Page Contains Text and Sign Up
    cnn.Login Page Contains Fields for Email and Password
    cnn.Login Page Contains Forgot Password Link
    cnn.Login Page Contains Login and Enabled Button





