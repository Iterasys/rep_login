*** Settings ***
Documentation   Testes de Login
Resource        ../resources/LoginPage.robot
Library         CSVLibrary

*** Test Cases ***
Teste de Login com Dados do CSV
    # Precisa alterar o caminho para o local do seu arquivo csv
    ${dados}=    read csv file to associative     C:/iterasys/rep_login/testdata/credentials.csv
    FOR    ${linha}    IN    @{dados}
        Abrir a Página de Login
        Inserir Nome de Usuário     ${linha}[email]
        Inserir Senha               ${linha}[senha]
        Clicar no Botão de Login
        # Aqui você deve adicionar verificações pós-login
        Fechar Navegador
    END
