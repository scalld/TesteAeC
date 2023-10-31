*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${LOGIN_FORM_USE}    https://www.saucedemo.com/

*** Keywords ***

Use para fazer Login
    Open Browser    ${LOGIN_FORM_USE}
    Maximize Browser Window
Pagina Inicial
    Element Should Contain    class=login_logo    Swag Labs
Verificação da pagina Inicial
    Element Should Contain    class=app_logo    Swag Labs
Verificação da pagina Carrinho
    Element Should Contain    class=title    Your Cart
Verificar tela de finalização
     Element Should Contain    class=summary_info_label    Payment Information
Verificar tela Finalizar
    Element Should Contain    class= complete-header    Thank you for your order!


Preencher o campo Username ${field_name} com ${field_value}
    Input Text    user-name    ${field_value}

Preencher o campo Password ${Password_name} e ${Password_value}
    Input Text    password    ${Password_value}

Preencher o campo firstName ${field_name} com ${field_value}
    Input Text    firstName    ${field_value}
Preencher o campo lastName ${field_name} com ${field_value}
    Input Text    lastName    ${field_value}
Preencher o campo postalCode ${field_name} com ${field_value}
    Input Text    postalCode    ${field_value}


Acionar o botão Login
    Click Button    Login
Acionar menu da pagina Inicial
    Click Button    Open Menu
Acessar a pagina do Carrinho
    Click Element    class=shopping_cart_container
Acionar o botão de Logout
    Click Element    id=logout_sidebar_link
Acionar botão Checkout
    Click Button    name=checkout
Acionar botão Continue
    Click Button    name=continue
Acionar o Botão Finalizar
    Click Button    name=finish
Acionar o Botão Back Home
    Click Button    name=back-to-products


Remover item na pagina do carrinho
    Click Button    name=remove-sauce-labs-backpack
Fechar navegador quando Logado
     Element Should Contain    class=app_logo    Swag Labs
    [Teardown]    Close Browser
Fechar navegador Pagina Inicial
     Element Should Contain    class=login_logo    Swag Labs
    [Teardown]    Close Browser
Adicionar produto ao carrinho
    Click Button    id=add-to-cart-sauce-labs-backpack
