*** Settings ***
Documentation    Esta suite testa o fluxo Santander receptora e HDI transmissora
Suite Teardown   Close Browser 
Resource        ../../resource/massas.robot
Resource        ../../page/Receptora_STA.robot
Resource         ../../page/transmissora_HDI.robot


*** Test Cases ***
Caso de teste 01 - Preencher dados pre-cadastro receptora PF HDI SEGUROS, Transmitir para HDI Seguros
    [Documentation]    Este teste preenche dados pre-cadastro receptora PF Santander
    [Tags]             PRE-cadastro    STA_receptora   HDI_transmissora
    #Dado que
    Acesso o Portal OPIN em HML da receptora ${URL_RECEPTORA_STA_AUTO_HML} 
    #e
    clico em comecar
    sou direcionado para página de preenchimento de dados de pre-cadastro ${URL_PRECADASTRO_STA_AUTO_HML} 
    na pagina de pre cadastro, seleciono o ${RADIO_BUTTON_PESSOA_FISICA}
    no sub-menu IDENTIFICAO DO CLIENTE clico e preencho com ${MASSA_HDI.cpf}, ${MASSA_HDI.nome}, ${EMAIL} e clico na checkbox ${CHECKBOX_IDENTIFICAO_CLIENTE} 
    no sub-menu SELECIONAR O PRODUTO clico na checkbox do produto desejado ${CHECKBOX_PRODUTO_AUTO} 
    no sub-menu ESCOLHA A SUA SEGURADORA clico e escrevo em BUSCAR INSTITUICAO a congenere ${ESCREVER_HDI_SEGUROS} realizar busca e clico no ${RADIO_BUTTON_HDI_SEGUROS}
    #quando
    no sub-menu PRAZO DE COMPARTILHAMENTO clico no caixa de seleção ${CAIXA_SELECAO_PRAZO} e seleciono ${PRAZO_COMPARTILHAMENTO_3MESES} e clico na checkbox ${CHECKBOX_TERMOS_CONDICOES} 
    #então
    clico no button enviar ${BUTTON_ENVIAR} e depois em continuar ${BUTTON_CONTINUAR} 

Caso de teste 02 - Prencher dados portal TRANSMISSORA com CPF, SENHA e realizar LOGIN
    [Documentation]    Este teste preenche os dados e realiza login para transmissora HDI Seguros
    Sou direcionado TRANSMISSORA OPIN ${TELA_LOGIN_TRANSMISSORA_HDI} e clico em comecar
    seleciono o button ${BUTTON_CPF}
    clico em ${PLACE_HOLDER_CPF_TRANSMISSORA} preencho o input field USUARIO ${MASSA_HDI.cpf}
    #quando
    clico em ${PLACE_HOLDER_SENHA_TRANSMISSORA} preencho o input field SENHA ${MASSA_HDI.senha}
    #então
    clico no BUTTON ACESSAR e sou direcionado para area logada

Caso de teste 03 - Selecionar produto e realizar transmissão
    [Documentation]    Este teste realiza seleção do produto na AREA LOGADA e realiza transmissão 
    ...                da Transmissora HDI Seguros para Receptora Santander AUTO
    Sou direcionado AREA LOGADA TRANSMISORA OPIN e seleciono produto "${CHECKBOX_PRODUTO_TRANSMISSORA_PATRIMONIAL}"
    clico no Button CONFIRMAR COMPARTILHAMENTO
    clico no Button CONFIRMAR
    Apos carregar informacoes sou direcionado para tela de CALL BACK
