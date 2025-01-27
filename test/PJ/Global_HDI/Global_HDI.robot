*** Settings ***
Documentation    Esta suite testa o fluxo PJ GLOBAL receptora e HDI transmissora
Suite Setup      Abrir o navegador
Suite Teardown   Close Browser 
Resource         ../../../resource/massas.robot
Resource         ../../../page/Receptora_global.robot
Resource         ../../../page/transmissora_HDI.robot

*** Test Cases ***
Caso de teste 01 - Preencher dados pre-cadastro receptora PJ GLOBAL, Transmitir para HDI
    [Documentation]    Este teste preenche dados pre-cadastro receptora PJ GLOBAL 
    [Tags]             PRE-cadastro    Global_receptora_PJ   HDI_transmissora_PJ
    #Dado que
    Acesso o Portal OPIN em PROD da receptora ${RECEPTORA_HDI_GLOBAL_HML}
    #e
    clico em continuar
    sou direcionado para página de preenchimento de dados de pre-cadastro ${URL_PRECADASTRO_HDI_GLOBAL_HML}
    na pagina de pre cadastro, seleciono o ${RADIO_BUTTON_PESSOA_FISICA}
    no sub-menu IDENTIFICAO DO CLIENTE clico e preencho com ${CPF_GLOBAL}, ${NOME_COMPLETO_HDI_SEGUROS}, ${EMAIL} e clico na checkbox ${CHECKBOX_IDENTIFICAO_CLIENTE} 
    no sub-menu SELECIONAR O PRODUTO clico na checkbox do produto desejado ${CHECKBOX_PRODUTO_AUTO} 
    no sub-menu ESCOLHA A SUA SEGURADORA clico e escrever em BUSCAR INSTITUICAO a congenere ${ESCREVER_HDI_SEGUROS} realizar busca e clico no ${RADIO_BUTTON_HDI_SEGUROS}
    no sub-menu PRAZO DE COMPARTILHAMENTO clico no caixa de seleção ${CAIXA_SELECAO_PRAZO} e seleciono ${PRAZO_COMPARTILHAMENTO_3MESES} e clico na checkbox ${CHECKBOX_TERMOS_CONDICOES} 
    #quando
    clico no button enviar ${BUTTON_ENVIAR} e depois em continuar ${BUTTON_CONTINUAR} 
    #então
    sou encaminhado para tela de redirecionamento, realizando a validação do DCR.

Caso de teste 02 - Prencher dados portal TRANSMISSORA com CNPJ, CPF, SENHA e realizar LOGIN
    [Documentation]    Este teste preenche os dados e realiza login para transmissora HDI Seguros
    [Tags]             LOGIN    Global_receptora_PJ    HDI_transmissora_PJ
    #Dado que
    Sou direcionado TRANSMISSORA OPIN ${TELA_LOGIN_TRANSMISSORA_HDI} e clico em comecar
    #e
    extraio o consentimento da URL HDI Seguros
    seleciono o button ${BUTTON_CNPJ}
    clico e preencho o input filed CNPJ ${MASSA_HDI_PJ.cnpj}
    clico e preencho o input field USUARIO ${MASSA_HDI_PJ.cpf}
    #quando
    clico e preencho o input field SENHA ${MASSA_HDI_PJ.senha}
    #então
    Então clico no BUTTON ACESSAR e sou direcionado para area logada