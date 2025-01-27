*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${RECEPTORA_HDI_GLOBAL_HML}                      https://openinsurance-int.hdiglobalbrasil.com.br/data-pull/bem-vindo
${URL_PRECADASTRO_HDI_GLOBAL_HML}                https://openinsurance-int.hdiglobalbrasil.com.br/data-pull/home

#MENU IDENTIFICACAO DO CLIENTE
${RADIO_BUTTON_PESSOA_FISICA}                    (//input[@type='radio'])[1]
${CPF_GLOBAL}                                    09670867878 
${NOME_COMPLETO_HDI_SEGUROS}                     Regressivo DCR, HDI e Santander Seguros
${ESCREVER_HDI_SEGUROS}                          HDI SEGUROS   

#ESCOLHA SUA SEGURADORA
${RADIO_BUTTON_SANTANDER_AUTO}                   (//input[contains(@type,'radio')])[5]    
${RADIO_BUTTON_HDI_SEGUROS}                      (//input[contains(@type,'radio')])[3]

#MENU PRAZO DE COMPARTILHAMENTO
${CAIXA_SELECAO_PRAZO}                           //span[contains(.,'Selecione o prazo')]
${PRAZO_COMPARTILHAMENTO_3MESES}                 //li[contains(.,'3 meses')]             
${CHECKBOX_TERMOS_CONDICOES}                     //input[@id='3000']    

#BOTÃO ENVIAR E CONTINUAR
${BUTTON_ENVIAR}                                 //button[contains(.,'enviar')]
${BUTTON_CONTINUAR}                              //button[contains(.,'Continuar')]

#REDIRECIONAMENTO TRANSMISSORA
${PAGINA_REDIRECIONAMENTO_TRANSMISSORA}          //*[@class="title"]


*** Keywords ***
Acesso o Portal OPIN em PROD da receptora ${receptora_HDI_seguros_PROD}    
    Open Browser                              ${receptora_HDI_seguros_PROD}    chrome 
    Capture Page Screenshot                           

clico em continuar
    Click Button                              //button[contains(.,'começar')]
    Capture Page Screenshot                   

sou direcionado para página de preenchimento de dados de pre-cadastro ${pagina_pre_cadastro_hdi_seguros_prod}
    Wait Until Element Does Not Contain       //*[@class="warning"]     Por favor aguarde, carregando informações. 
    Wait Until Element Is Visible             //span[contains(.,'Identificação do cliente')]
    #validando o link da receptora em PROD
    ${url_atual}=   Get Location
    Should Be Equal                           ${url_atual}    ${pagina_pre_cadastro_hdi_seguros_prod}
    Capture Page Screenshot                                    

na pagina de pre cadastro, seleciono o ${radio_button_pessoa_fisica}
    Click Element                             ${radio_button_pessoa_fisica}    

no sub-menu IDENTIFICAO DO CLIENTE clico e preencho com ${cpf_hdi}, ${nome_completo_hdi}, ${email} e clico na checkbox ${checkbox} 
    Input Text                                //input[@placeholder='Digite seu CPF']              ${cpf_hdi}
    Input Text                                //input[@placeholder='Digite seu nome completo']    ${nome_completo_hdi}
    Input Text                                //input[@placeholder='Digite seu email']            ${email}
    Click Element                             ${checkbox}    action_chain=true
    Capture Page Screenshot                   

no sub-menu SELECIONAR O PRODUTO clico na checkbox do produto desejado ${checkbox_produto_auto}
    Scroll Element Into View                  //div[contains(.,'Escolha a sua Seguradora')]
    Capture Page Screenshot                   
    Click Element                             ${checkbox_produto_auto}    action_chain=true
    Capture Page Screenshot                         

no sub-menu ESCOLHA A SUA SEGURADORA clico e escrever em BUSCAR INSTITUICAO a congenere ${escrever_seguros} realizar busca e clico no ${radio_button_seguros}
    Scroll Element Into View                  //span[contains(.,'Prazo de compartilhamento')]
    Input Text                                //input[contains(@placeholder,'Digite os dados da instituição')]    ${escrever_seguros} 
    #clicar na lupa para realizar a busca
    Click Element                             //img[@src='assets/img/icons/icon-search.svg']                  
    Click Element                             card-listCompanies         
    Capture Page Screenshot                    

no sub-menu PRAZO DE COMPARTILHAMENTO clico no caixa de seleção ${caixa_selecao_prazo} e seleciono ${prazo_compartilhamento_3_meses} e clico na checkbox ${checkbox_termos_condicoes} 
    Scroll Element Into View                  //button[contains(.,'enviar')]
    Click Element                             ${caixa_selecao_prazo}
    Click Element                             ${prazo_compartilhamento_3_meses}    
    Click Element                             ${checkbox_termos_condicoes}    action_chain="true"
    Capture Page Screenshot                   
    #Aguardar o botão "Enviar" ser habilitado
    Wait Until Element Is Visible             ${BUTTON_ENVIAR}   

clico no button enviar ${button_enviar} e depois em continuar ${button_continuar} 
    Click Button                              ${button_enviar}  
    Wait Until Element Is Visible             ${button_continuar} 
    Capture Page Screenshot                   
    Click Button                              ${button_continuar}

sou encaminhado para tela de redirecionamento, realizando a validação do DCR.
#    Wait Until Element Does Not Contain       //*[@class="warning"]                        Por favor aguarde, você está sendo redirecionado   
#    Wait Until Element Does Not Contain       //*[@class="warning"]                        Por favor aguarde, carregando informações.  
    Wait Until Element Contains               ${PAGINA_REDIRECIONAMENTO_TRANSMISSORA}      Por favor aguarde, você está sendo redirecionado    40
    Capture Page Screenshot                                               