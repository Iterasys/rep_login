*** Settings ***
# O chromedriver precisa estar em uma pasta na máquina e o caminho dele 
# na variável de ambiente de sistemas "Path" do Windows
# É necessário reiniciar a máquina após alterar o "Path"
Library             SeleniumLibrary

*** Variables ***
${LOGIN_URL}        http://repmais-hlg.innovaci.com.br/auth/login
${EMAIL_INPUT}      id=email-test-rep
${PASSWORD_INPUT}   id=senha-test-rep
${LOGIN_BUTTON}     id=proximo-test-rep

*** Keywords ***
Configurar WebDriver
    Set Selenium Implicit Wait          10 seconds
    Set Selenium Timeout                15 seconds

Abrir a Página de Login
    Open Browser    ${LOGIN_URL}        browser=Chrome

Inserir Nome de Usuário
    [Arguments]     ${username}
    Input Text      ${EMAIL_INPUT}       ${username}

Inserir Senha
    [Arguments]     ${password}
    Input Text      ${PASSWORD_INPUT}   ${password}

Clicar no Botão de Login
    Click Button    ${LOGIN_BUTTON}

Fechar Navegador
    Close Browser
