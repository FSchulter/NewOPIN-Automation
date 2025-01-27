*** Settings ***
Documentation    Esta suite testa o fluxo GLOBAL receptora e HDI Seguros transmissora
Suite Setup      Abrir o navegador
Suite Teardown   Close Browser 



*** Test Cases ***
Caso de teste 01 - Preencher dados pre-cadastro receptora Pessoa Física
    [Documentation]    Este teste preenche dados pre-cadastro receptora PF GLOBAL 
    [Tags]             PRE-cadastro    Global_receptora    HDI_transmissora
    Dado que acesso o portal do OPIN "${URL_Receptora_GLOBAL}" e clico em comecar
    E preencho dados de identificação do CLIENTE, CPF "${MASSA_HDI.cpf}", NOME "${MASSA_HDI.nome}" e EMAIL "${MASSA_HDI.email}"
    E preencho os dados de SELECAO DE PRODUTO "${PATRIMONIAL_PRODUTO}"
    E preencho os dados de ESCOLHA SUA SEGURADORA "${ESCREVER_HDI}" e selecionar checkbox "${CONGERE_LISTA_HDI}"
    E seleciono as opcoes de PRAZO DE COMPARTILHAMENTO "${LISTA_PRAZO[0]}"
    Então clico em enviar compartilhamento e realizo acesso para transmissora HDI

Caso de teste 02 - Prencher dados portal TRANSMISSORA com CPF, SENHA e realizar LOGIN
    [Documentation]    Este teste preenche os dados e realiza login para transmissora HDI SEGUROS
    [Tags]             LOGIN    Global_receptora    HDI_transmissora
    Dado que sou direcionado TRANSMISSORA OPIN e clico em comecar
    E extraio o consentimento da URL HDI Seguros
    E seleciono o button CPF
    E clico e preencho o input field USUARIO "${MASSA_HDI.cpf}"
    E clico e preencho o input field SENHA "${MASSA_HDI.senha}"
    Então clico no BUTTON ACESSAR e sou direcionado para area logada
    
Caso de teste 03 - Selecionar produto e realizar transmissão
    [Documentation]    Este teste realiza seleção do produto na AREA LOGADA e realiza transmissão 
    ...                da Transmissora HDI SEGUROS para Receptora GLOBAL
    [Tags]             Selecao_produtos    Call_back    Global_receptora    HDI_transmissora
    Dado que sou direcionado AREA LOGADA TRANSMISORA OPIN e seleciono produto "${CHECKBOX_APOLICE_PATRIMONIAL}"
    E clico no Button CONFIRMAR COMPARTILHAMENTO
    E clico no Button CONFIRMAR
    Então sou direcionado para tela de CALL BACK
