*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#TELA PORTAL OPIN
${URL_RECEPTORA_STA_AUTO_HML}                    https://openinsurance-int.santanderauto.com.br/data-pull/bem-vindo
${URL_PRECADASTRO_STA_AUTO_HML}                  https://openinsurance-int.santanderauto.com.br/data-pull/home

#MENU IDENTIFICACAO DO CLIENTE
${RADIO_BUTTON_PESSOA_FISICA}                    (//input[@type='radio'])[1]
${RADIO_BUTTON_PESSOA_JURIDICA}                  (//input[contains(@type,'radio')])[2]

${PLACE_HOLDER_CNPJ}                             //input[contains(@ng-reflect-name,'cnpj')]  
${PLACE_HOLDER_CPF}                              //input[@placeholder='Digite seu CPF']  
${PLACE_HOLDER_NOME}                             //input[@placeholder='Digite seu nome completo'] 
${PLACE_HOLDER_EMAIL}                            //input[@placeholder='Digite seu email']   

${EMAIL}                                         teste@teste.com.br  
${CHECKBOX_IDENTIFICAO_CLIENTE}                  1000     
${CHECKBOX_IDENTIFICAO_CLIENTE_PJ}               2000

#SELECIONAR PRODUTO
${CHECKBOX_PRODUTO_AUTO}                         //input[@id='1']
${CHECKBOX_PRODUTO_PATRIMONIAL}                  //input[@id='2']                 
${CHECKBOX_PRODUTO_HABITACIONAL}                 //input[@id='5']

#ESCOLHA SUA SEGURADORA
${PLACE_HOLDER_DIGITE_INSTITUICAO}               //input[contains(@placeholder,'Digite os dados da instituição')] 

${ESCREVER_HDI_SEGUROS}                          HDI SEGUROS     
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
Acesso o Portal OPIN em HML da receptora ${receptora}    
    Open Browser                              ${receptora}    browser=chrome
    Capture Page Screenshot                           

clico em comecar
    Click Button                              //button[contains(.,'começar')]
    Capture Page Screenshot                   

sou direcionado para página de preenchimento de dados de pre-cadastro ${pagina_pre_cadastro_hdi_global_prod}
    Wait Until Element Does Not Contain       //*[@class="warning"]     Por favor aguarde, carregando informações. 
    Wait Until Element Is Visible             //span[contains(.,'Identificação do cliente')]
    #validando o link da receptora em PROD
    ${url_atual}=   Get Location
    Should Be Equal                           ${url_atual}    ${pagina_pre_cadastro_hdi_global_prod}
    Capture Page Screenshot                  

#----------------------------- JORNADA PRÉ CADASTRO PESSOA JURÍDICA ----------------------------- 

na pagina de pre cadastro, seleciono o ${radio_button_pessoa_juridica}
    Click Element                             ${radio_button_pessoa_juridica}    

no sub-menu IDENTIFICAO DO CLIENTE clico e preencho com ${cnpj_hdi}, ${cpf_hdi}, ${nome_completo_hdi}, ${email} e clico na checkbox ${checkbox}                               
    Input Text                                ${PLACE_HOLDER_CNPJ}        ${cnpj_hdi}
    Input Text                                ${PLACE_HOLDER_CPF}         ${cpf_hdi}
    Input Text                                ${PLACE_HOLDER_NOME}        ${nome_completo_hdi}
    Input Text                                ${PLACE_HOLDER_EMAIL}       ${email}
    Click Element                             ${checkbox}                 action_chain=true
    Capture Page Screenshot                   

#----------------------------- JORNADA PRÉ CADASTRO PESSOA FÍSICA -------------------------------- 

no sub-menu IDENTIFICAO DO CLIENTE clico e preencho com ${cpf_hdi}, ${nome_completo_hdi}, ${email} e clico na checkbox ${checkbox}      
    Input Text                                ${PLACE_HOLDER_CPF}         ${cpf_hdi}
    Input Text                                ${PLACE_HOLDER_NOME}        ${nome_completo_hdi}
    Input Text                                ${PLACE_HOLDER_EMAIL}       ${email}
    Click Element                             ${checkbox}                 action_chain=true
    Capture Page Screenshot         

#-------------------------------------------------------------------------------------------------

no sub-menu SELECIONAR O PRODUTO clico na checkbox do produto desejado ${checkbox_produto_habitacional}
    Scroll Element Into View                  //div[contains(.,'Escolha a sua Seguradora')]
    Click Element                             ${checkbox_produto_habitacional}    action_chain=true
    Capture Page Screenshot                         

no sub-menu ESCOLHA A SUA SEGURADORA clico e escrevo em BUSCAR INSTITUICAO a congenere ${escrever_seguros} realizar busca e clico no ${radio_button_seguros}
    Scroll Element Into View                  //span[contains(.,'Prazo de compartilhamento')]
    Input Text                                ${PLACE_HOLDER_DIGITE_INSTITUICAO}    ${escrever_seguros} 
    #clicar na lupa para realizar a busca
    Click Element                             //img[@src='assets/img/icons/icon-search.svg']                  
    Click Element                             ${radio_button_seguros}          
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

