*** Settings ***
Library     SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
Scenario: Login com Usuaio Valido
    Given Use para fazer Login
    And Pagina Inicial
    When Preencher o campo Username "user-name" com standard_user
    And Preencher o campo Password "password_name" e secret_sauce
    And Acionar o botão Login
    Then Verificação da pagina Inicial

Scenario: Logout após login
    Given Use para fazer Login
    When Preencher o campo Username "user-name" com standard_user
    And Preencher o campo Password "password_name" e secret_sauce
    And Acionar o botão Login
    And Verificação da pagina Inicial
    And Acionar menu da pagina Inicial
    And Acionar o botão de Logout
    Then Pagina Inicial
    And Fechar navegador Pagina Inicial

Scenario: Adicionar item ao carrinho
    Given Use para fazer Login
    And Pagina Inicial
    When Preencher o campo Username "user-name" com standard_user
    And Preencher o campo Password "password_name" e secret_sauce
    And Acionar o botão Login
    And Verificação da pagina Inicial
    And Adicionar produto ao carrinho
    Then Fechar navegador quando Logado

Scenario: Remover item do carrinho na pagina do carrinho
    Given Use para fazer Login
    And Pagina Inicial
    When Preencher o campo Username "user-name" com standard_user
    And Preencher o campo Password "password_name" e secret_sauce
    And Acionar o botão Login
    And Verificação da pagina Inicial
    And Adicionar produto ao carrinho
    And Acessar a pagina do Carrinho
    And Remover item na pagina do carrinho
    And Verificação da pagina Carrinho
    Then Fechar navegador quando Logado

Scenario: Fazer login,adicionar ao carrinho, Checkout e finalizar compra
    Given Use para fazer Login
    And Pagina Inicial
    When Preencher o campo Username "user-name" com standard_user
    And Preencher o campo Password "password_name" e secret_sauce
    And Acionar o botão Login
    And Verificação da pagina Inicial
    And Adicionar produto ao carrinho
    And Acessar a pagina do Carrinho
    And Acionar botão Checkout
    And Preencher o campo firstName "firstName" com Myke
    And Preencher o campo lastName "lastName" com Leal
    And Preencher o campo postalCode "postalCode" com 32425155
    And Acionar botão Continue
    And Verificar tela de finalização
    And Acionar o botão Finalizar
    Then Verificar tela Finalizar
    And Acionar o Botão Back Home
    And Fechar navegador quando Logado