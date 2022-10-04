*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

User Vists CNN Site and Login
     wait until element is visible    css=#account-icon-button > button
     click button    css=#account-icon-button > button
     sleep    3s

Verify Login Page
Login Page Contains CNN Logo
    page should contain element    css=#user-account-page--login-logo
Login Page Contains Text and Sign Up
    page should contain element    css=#login-header
    page should contain element    css=#login-subheading
    page should contain element    css=#login-subheading
Login Page Contains Fields for Email and Password
    element should be enabled    css=#login-email-input
    element should be enabled    css=#login-password-input
Login Page Contains Forgot Password Link
    page should contain button    css=body > div.layout__content-wrapper.layout-user-account__content-wrapper > section.layout__wrapper.layout-user-account__wrapper > section > section > section > div.user-account-shared__wrapper > div.user-account-login__form > div > form > button.user-account-login-form__forgot-password.user-account-shared__link
Login Page Contains Login and Enabled Button
    page should contain button    css=body > div.layout__content-wrapper.layout-user-account__content-wrapper > section.layout__wrapper.layout-user-account__wrapper > section > section > section > div.user-account-shared__wrapper > div.user-account-login__form > div > form > button.user-account-login-form__button.user-account-shared__button
    element should be enabled    css=body > div.layout__content-wrapper.layout-user-account__content-wrapper > section.layout__wrapper.layout-user-account__wrapper > section > section > section > div.user-account-shared__wrapper > div.user-account-login__form > div > form > button.user-account-login-form__button.user-account-shared__button

