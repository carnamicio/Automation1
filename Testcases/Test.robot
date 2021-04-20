*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Userkeywords.robot
*** Variables ***
${url}  https://tweakers.net/my.tnet/login/?location=https://tweakers.net/

*** Test Cases ***
TC_001 Login
    open browser  ${url}  chrome
    maximize browser window
    ${Row}=  Read Number Rows  Blad1

    FOR  ${i}  IN RANGE  1  ${Row}+1
      ${username}=  Read Data Cell  Blad1  ${i}  1
      ${password}=  Read Data Cell  Blad1  ${i}  2
      input text  name:tweakers_login_form[user]  ${username}
      input text  name:tweakers_login_form[password]  ${password}
      click button  //input[@type='submit' and @value='Inloggen']
      sleep  3
    END
    close browser