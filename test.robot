*** Settings ***
Library  Selenium2Library
Test Teardown  Close Browser

*** Variables ***
${WEBSITE}  http://www.poczta.wp.pl/
${LOGIN}  testerwsb_t1
${PASSWORD}  adam1234
${WRONG_LOGIN}  adam123576
${WRONG_PASSWORD}  asd

*** Test Cases ***
Go To Website And Test Purple Quiz
  Open Browser  ${WEBSITE}
  Maximize Browser Window
  Input Text  //*[@id='login']  ${LOGIN}
  Input Password  //*[@id='password']  ${PASSWORD}
  Click Button  //*[@id='btnSubmit']
  ${TEXT}=  Get Text  //*[@title='Odebrane']
  Should be equal  ${TEXT}  Odebrane

*** Keywords ***
