*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Begin Web Test
     open browser   about:blank      ${BROWSER}
     maximize browser window
     go to     ${START_URL}
     sleep    3s

End Web Test
     close browser