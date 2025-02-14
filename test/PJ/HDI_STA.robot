*** Settings ***
Documentation    Esta suite testa o fluxo PJ HDI receptora e SANTANDER transmissora
Suite Teardown   Close Browser 
Resource         ../../resource/massas.robot
Resource         ../../page/Receptora_HDI.robot
Resource         ../../page/transmissora_STA.robot

*** Test Cases ***
Caso de teste 01 - Preencher dados pre-cadastro receptora PJ SANTANDER, Transmitir para HDI
    [Documentation]    Este teste preenche dados pre-cadastro receptora PJ, HDI SEGUROS
    [Tags]             PRE-cadastro   HDI_receptora_PJ   Santander_transmissora_PJ
    #Dado que
    Acesso o Portal OPIN em HML da receptora ${URL_RECEPTORA_HDI_SEGUROS_HML}
    #e
    clico em comecar
    sou direcionado para página de preenchimento de dados de pre-cadastro ${URL_PRECADASTRO_HDI_SEGUROS_HML} 
    na pagina de pre cadastro, seleciono o ${RADIO_BUTTON_PESSOA_JURIDICA}
    no sub-menu IDENTIFICAO DO CLIENTE clico e preencho com ${MASSA_SANTANDER_PJ.cnpj} , ${MASSA_SANTANDER_PJ.cpf}, ${MASSA_SANTANDER_PJ.nome}, ${EMAIL} e clico na checkbox ${CHECKBOX_IDENTIFICAO_CLIENTE_PJ} 
    no sub-menu SELECIONAR O PRODUTO clico na checkbox do produto desejado ${CHECKBOX_PRODUTO_AUTO}       
    no sub-menu ESCOLHA A SUA SEGURADORA clico e escrevo em BUSCAR INSTITUICAO a congenere ${ESCREVER_HDI_SANTANDER} realizar busca e clico no ${RADIO_BUTTON_HDI_SANTANDER}
    #quando
    no sub-menu PRAZO DE COMPARTILHAMENTO clico no caixa de seleção ${CAIXA_SELECAO_PRAZO} e seleciono ${PRAZO_COMPARTILHAMENTO_3MESES} e clico na checkbox ${CHECKBOX_TERMOS_CONDICOES} 
    #então
    clico no button enviar ${BUTTON_ENVIAR} e depois em continuar ${BUTTON_CONTINUAR} 

 Caso de teste 02 - Prencher dados portal TRANSMISSORA com CNPJ, CPF, SENHA e realizar LOGIN
    [Documentation]    Este teste preenche os dados e realiza login para transmissora SANTANDER AUTO
    [Tags]             LOGIN    HDI_receptora_PJ    Santander_transmissora_PJ
    #Dado que
    Sou direcionado TRANSMISSORA OPIN ${TELA_LOGIN_TRANSMISSORA_SANTANDER} e clico em comecar
    #e
    seleciono o button ${BUTTON_CNPJ}
    clico em ${PLACE_HOLDER_CNPJ_TRANSMISSORA} preencho o input filed CNPJ ${MASSA_SANTANDER_PJ.cnpj}
    clico em ${PLACE_HOLDER_CPF_TRANSMISSORA} preencho o input field USUARIO ${MASSA_SANTANDER_PJ.cpf}
    #quando
    clico em ${PLACE_HOLDER_SENHA_TRANSMISSORA} preencho o input field SENHA ${MASSA_SANTANDER_PJ.senha}
    #então
    clico no BUTTON ACESSAR e sou direcionado para area logada

Caso de teste 03 - Selecionar produto e realizar transmissão
    [Documentation]    Este teste realiza seleção do produto na AREA LOGADA e realiza transmissão 
    ...                da Transmissora PJ Santander para Receptora PJ HDI Seguros
    [Tags]             Call_back    HDI_receptora_PJ    Santander_transmissora_PJ
    #Dado que 
    Sou direcionado AREA LOGADA TRANSMISORA OPIN e seleciono produto "${CHECKBOX_APOLICE_TRANSMISSORA_STA_AUTO}"
    #e 
    clico no Button CONFIRMAR COMPARTILHAMENTO
    clico no Button CONFIRMAR
    preencho com a informacao de e-mail do primeiro socio "${ESCREVER_EMAIL_REQUERENTE}" e clico em salvar "${BUTTON_SALVAR1}"
    preencho com a informacao de e-mail do segundo socio "${ESCREVER_EMAIL_SOCIO}" e clico em salvar "${BUTTON_SALVAR2}"
    #quando
    clico na checkbox "${CHECKBOX_TERMOS_VERDADEIROS}" e clico no BUTTON em "${CONFIRMAR_COMPARTILHAMENTO}"
    #Então 
    Apos carregar informacoes sou direcionado para tela de CALL BACK