*** Settings ***
Library  ExtendedSelenium2Library
Test Setup  Open Browser To Login Page
Test Teardown  Close Browser

*** Variables ***
${WEBSITE}  http://kamil-kasprzak.com/istqb-quizzes/
${LOGIN}  testerwsb_t1
${PASSWORD}  adam1234
${WRONG_LOGIN}  adam123576
${WRONG_PASSWORD}  asd

*** Test Cases ***
Go To Website And Test Purple Quiz
  Click Link  //a[@href='http://getistqb.com/']
  User Click  //div[@class='vc_grid-item vc_clearfix app-grid-homepage-posts vc_col-sm-4 vc_visible-item fadeIn animated']
  User Click  //input[@name='startQuiz']
  User Click  //span[text()='Testowanie jest używaniem oprogramowania w celu znajdowania defektów']
  User Click  //input[@name='next']
  User Click  //span[text()='Analizy i projektowania testów']
  User Click  //li[2]/div[5]/div/input[@name='next']
  User Click  //span[text()='Raportowanie rozbieżności jako incydentów']
  User Click  //li[3]/div[5]/div/input[@name='next']
  User Click  //span[text()='B, C i D']
  User Click  //li[4]/div[5]/div/input[@name='next']
  User Click  //span[text()='Testowanie pokrycia instrukcji i decyzji']
  User Click  //li[5]/div[5]/div/input[@name='next']
  User Click  //span[text()='Zstępujące testy integracyjne']
  User Click  //li[6]/div[5]/div/input[@name='next']
  User Click  //span[text()='Testy wykonywane przez potencjalnych klientów w ich własnych środowiskach']
  User Click  //li[7]/div[5]/div/input[@name='next']
  User Click  //span[text()='Testowanie atrybutów jakościowych systemu takich jak wydajność i użyteczność']
  User Click  //li[8]/div[5]/div/input[@name='next']
  User Click  //span[text()='Skalowalność']
  User Click  //li[9]/div[5]/div/input[@name='next']
  User Click  //span[text()='Jak wiele kodu zostało pokryte testami']
  User Click  //li[10]/div[5]/div/input[@name='next']
  User Click  //span[text()='Moderator']
  User Click  //li[11]/div[5]/div/input[@name='next']
  User Click  //span[text()='Jest to tani sposób na uzyskanie pewnych korzyści']
  User Click  //li[12]/div[5]/div/input[@name='next']
  User Click  //span[text()='Może być trudno stwierdzić, czy test przeszedł czy nie']
  User Click  //li[13]/div[5]/div/input[@name='next']
  User Click  //span[text()='0, 1, 99, 100']
  User Click  //li[14]/div[5]/div/input[@name='next']
  User Click  //span[text()='Wtedy, kiedy skończy się czas przewidziany na testy']
  User Click  //li[15]/div[5]/div/input[@name='next']
  ${RESULT}=  Get Text  //p[@class='qzk_s_results_answers-result']
  Should be equal  ${RESULT}  UDZIELONO POPRAWNEJ ODPOWIEDZI NA 15 Z 15 PYTAŃ

*** Keywords ***
Open Browser To Login Page
  Open Browser  ${WEBSITE}
  Maximize Browser Window

User Click
  [Arguments]  ${ELEMENT}
  Scroll Element Into View  ${ELEMENT}
  Wait Until Element is visible  ${ELEMENT}     timeout=30s
  Click Element  ${ELEMENT}
