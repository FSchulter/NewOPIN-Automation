*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${RECEPTORA_HDI_SEGUROS_PROD}                    https://openinsurance.hdi.com.br/data-pull/bem-vindo
${URL_PRECADASTRO_HDI_SEGUROS_PROD}              https://openinsurance.hdi.com.br/data-pull/home
#MENU IDENTIFICACAO DO CLIENTE
${RADIO_BUTTON_PESSOA_FISICA}                    (//input[@type='radio'])[1]
${CPF_HDI}                                       09670867878 
${NOME_COMPLETO_CHUBB}                           Regressivo DCR, HDI e Chubb
${NOME_COMPLETO_CA2C}                            Regressivo DCR, HDI e CA2C    
${NOME_COMPLETO_HDI_DO_BRASIL}                   Regressivo DCR, HDI e HDI do Brasil
${NOME_COMPLETO_SICOOB_SEGUROS}                  Regressivo DCR, HDI e Sicoob Seguros
${NOME_COMPLETO_XP_PROVIDENCIA}                  Regressivo DCR, HDI e XP Providencia
${NOME_COMPLETO_ZURICH_SEGUROS}                  Regressivo DCR, HDI e Zurich Seguros
${NOME_COMPLETO_ZURICH_PREVIDENCIA}              Regressivo DCR, HDI e Zurich Previdencia
${NOME_COMPLETO_SANTANDER_AUTO}                  Regressivo DCR, HDI e Santander Auto
${NOME_COMPLETO_SANTANDER_CAPITALIZACAO}         Regressivo DCR, HDI e Santander Capitalizacao
${NOME_COMPLETO_BRADESCO_SEGUROS}                Regressivo DCR, HDI e Bradesco Seguros
${NOME_COMPLETO_ALLIANZ}                         Regressivo DCR, HDI e Allianz
${NOME_COMPLETO_CARDIF_PREVIDENCIA}              Regressivo DCR, HDI e Cardif Previdencia
${NOME_COMPLETO_CARDIF_SEGUROS}                  Regressivo DCR, HDI e Cardif Seguros
${NOME_COMPLETO_ICATU}                           Regressivo DCR, HDI e Icatu
${NOME_COMPLETO_SOMPO}                           Regressivo DCR, HDI e Sompo
${NOME_COMPLETO_CNP_CAPITALIZACAO}               Regressivo DCR, HDI e CNP Capitalizacao
${NOME_COMPLETO_BTG_PREVIDENCIA}                 Regressivo DCR, HDI e BTG Previdencia
${NOME_COMPLETO_BTG_SEGUROS}                     Regressivo DCR, HDI e BTG Seguros
${NOME_COMPLETO_RIO_GRANDE_SEGUROS}              Regressivo DCR, HDI e Rio Grande Seguros
${NOME_COMPLETO_ZURICH_BRASIL_SEGUROS}           Regressivo DCR, HDI e Zurich Brasil Seguros
${NOME_COMPLETO_INDIANA_SEGUROS}                 Regressivo DCR, HDI e Indiana Seguros
${NOME_COMPLETO_BRASILCAP}                       Regressivo DCR, HDI e Brasilcap
${NOME_COMPLETO_LUIZA_SEG}                       Regressivo DCR, HDI e Luiza Seg
${NOME_COMPLETO_PRUDENTIAL_BRASIL}               Regressivo DCR, HDI e PRUDENTIAL 
${NOME_COMPLETO_PORTO_SEGURO}                    Regressivo DCR, HDI e Porto Seguro
${NOME_COMPLETO_AUSTRAL}                         Regressivo DCR, HDI e Austral
${NOME_COMPLETO_DARWIN_SEGUROS}                  Regressivo DCR, HDI e Darwin Seguros
${NOME_COMPLETO_CAIXA_SEGURADORA}                Regressivo DCR, HDI e Caixa Seguradora
${NOME_COMPLETO_CAIXA_CAPITALIZACAO}             Regressivo DCR, HDI e Caixa Capitalizacao
${NOME_COMPLETO_CAIXA_RESIDENCIAL}               Regressivo DCR, HDI e Caixa Residencial
${NOME_COMPLETO_CAIXA_PREVIDENCIA_VIDA}          Regressivo DCR, HDI e Caixa Previdencia Vida
${NOME_COMPLETO_SWISS_RE}                        Regressivo DCR, HDI e Swiss Re
${NOME_COMPLETO_SIMPLE2U}                        Regressivo DCR, HDI e Simple2u
${NOME_COMPLETO_EVIDENCE}                        Regressivo DCR, HDI e Evidence
${NOME_COMPLETO_SUL_AMERICA}                     Regressivo DCR, HDI e Sul America
${NOME_COMPLETO_NEO_SEGURADORA}                  Regressivo DCR, HDI e Neo Seguradora
${NOME_COMPLETO_PREVISUL}                        Regressivo DCR, HDI e Previsul
${NOME_COMPLETO_ITAU_SEGUROS}                    Regressivo DCR, HDI e Itau Seguros
${NOME_COMPLETO_BRASILSEG}                       Regressivo DCR, HDI e Brasilseg
${NOME_COMPLETO_TOKIO_MARINE}                    Regressivo DCR, HDI e Tokio Marine
${NOME_COMPLETO_YELUM_SEGUROS}                   Regressivo DCR, HDI e Yelum Seguros
${NOME_COMPLETO_TOO_SEGUROS}                     Regressivo DCR, HDI e Too Seguros
${NOME_COMPLETO_JUSTOS_SEGUROS}                  Regressivo DCR, HDI e Justos Seguros
${NOME_COMPLETO_MAPFRE}                          Regressivo DCR, HDI e Mapfre
${NOME_COMPLETO_BRASILPREV}                      Regressivo DCR, HDI e Brasilprev
${NOME_COMPLETO_SAFRA_SEGUROS}                   Regressivo DCR, HDI e Safra Seguros
${NOME_COMPLETO_HDI_GLOBAL}                      Regressivo DCR, HDI e HDI Global
${EMAIL}                                         teste@opinteste.com.br
${CHECKBOX_IDENTIFICAO_CLIENTE}                  //input[@id='1000']   
#MENU SELECIONAR O PRODUTO
${CHECKBOX_PRODUTO_AUTO}                         //input[@id='1']            
#MENU ESCOLHA SUA SEGURADORA       
${ESCREVER_CHUBB_SEGUROS}                        chubb        
${ESCREVER_CA2C_SEGUROS}                         CA2C                 
${ESCREVER_HDI_DO_BRASIL}                        HDI Seguros do Brasil    
${ESCREVER_SICOOB_SEGUROS}                       Sicoob
${ESCREVER_XP_PROVIDENCIA}                       XP VIDA E PREVIDÊNCIA S.A
${ESCREVER_ZURICH_SEGUROS}                       Zurich Santander Seguros
${ESCREVER_ZURICH_PREVIDENCIA}                   Zurich Santander Previdência
${ESCREVER_SANTANDER_AUTO}                       Santander Auto
${ESCREVER_SANTANDER_CAPITALIZACAO}              Santander Capitalização
${ESCREVER_BRADESCO_SEGUROS}                     Bradesco Seguros
${ESCREVER_ALLIANZ}                              Allianz
${ESCREVER_CARDIF_PREVIDENCIA}                   CARDIF DO BRASIL VIDA E PREVIDÊNCIA LTDA  
${ESCREVER_CARDIF_SEGUROS}                       CARDIF DO BRASIL SEGUROS E GARANTIAS S.A
${ESCREVER_ICATU}                                ICATU SEGUROS S.A
${ESCREVER_SOMPO}                                Sompo Seguros
${ESCREVER_CNP_CAPITALIZACAO}                    CNP CAPITALIZAÇÃO
${ESCREVER_BTG_PREVIDENCIA}                      BTG PACTUAL VIDA E PREVIDENCIA
${ESCREVER_BTG_SEGUROS}                          BTG PACTUAL SEGUROS
${ESCREVER_RIO_GRANDE_SEGUROS}                   RIO GRANDE SEGUROS E PREVIDENCIA
${ESCREVER_INDIANA_SEGUROS}                      INDIANA SEGUROS
${ESCREVER_ZURICH_BRASIL_SEGUROS}                Zurich Brasil Companhia de Seguros
${ESCREVER_BRASILCAP}                            BRASILCAP
${ESCREVER_LUIZA_SEG}                            LUIZASEG
${ESCREVER_PRUDENTIAL_BRASIL}                    PRUDENTIAL DO BRASIL
${ESCREVER_PORTO_SEGURO}                         PORTO SEGURO
${ESCREVER_AUSTRAL}                              AUSTRAL
${ESCREVER_DARWIN_SEGUROS}                       DARWIN
${ESCREVER_CAIXA_SEGURADORA}                     CAIXA SEGURADORA
${ESCREVER_CAIXA_CAPITALIZACAO}                  CAIXA CAPITALIZAÇÃO
${ESCREVER_CAIXA_RESIDENCIAL}                    CAIXA RESIDENCIAL
${ESCREVER_CAIXA_PREVIDENCIA_VIDA}               Caixa Vida e Previdência
${ESCREVER_SWISS_RE}                             SWISS RE
${ESCREVER_SIMPLE2U}                             Simple2u
${ESCREVER_EVIDENCE}                             EVIDENCE
${ESCREVER_SUL_AMERICA}                          SULAMÉRICA
${ESCREVER_NEO_SEGURADORA}                       NEO
${ESCREVER_PREVISUL}                             PREVISUL
${ESCREVER_ITAU_SEGUROS}                         ITAU
${ESCREVER_BRASILSEG}                            BRASILSEG
${ESCREVER_TOKIO_MARINE}                         TOKIO MARINE
${ESCREVER_YELUM_SEGUROS}                        YELUM    
${ESCREVER_TOO_SEGUROS}                          TOO SEGUROS
${ESCREVER_JUSTOS_SEGUROS}                       JUSTOS
${ESCREVER_MAPFRE}                               MAPFRE
${ESCREVER_BRASILPREV}                           BRASILPREV
${ESCREVER_SAFRA_SEGUROS}                        SAFRA SEGUROS
${ESCREVER_HDI_GLOBAL}                           HDI GLOBAL
${RADIO_BUTTON_CHUBB_SEGUROS}                    //input[@name='card-listCompanies']
${RADIO_BUTTON_CA2C_SEGUROS}                     //input[@name='card-listCompanies']
${RADIO_BUTTON_HDI_DO_BRASIL}                    //input[contains(@name,'card-listCompanies')]     
${RADIO_BUTTON_SICOOB_SEGUROS}                   //input[contains(@name,'card-listCompanies')]
${RADIO_BUTTON_XP_PROVIDENCIA}                   //input[contains(@name,'card-listCompanies')]
${RADIO_BUTTON_ZURICH_SEGUROS}                   (//input[contains(@type,'radio')])[3]   
${RADIO_BUTTON_ZURICH_PREVIDENCIA}               (//input[contains(@type,'radio')])[4]
${RADIO_BUTTON_SANTANDER_AUTO}                   (//input[contains(@type,'radio')])[5]    
${RADIO_BUTTON_SANTANDER_CAPITALIZACAO}          (//input[contains(@type,'radio')])[6]
${RADIO_BUTTON_BRADESCO_SEGUROS}                 (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_ALLIANZ}                          (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_CARDIF_PREVIDENCIA}               (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_CARDIF_SEGUROS}                   (//input[contains(@type,'radio')])[4]
${RADIO_BUTTON_ICATU}                            (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_HDI_GLOBAL}                       (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_SOMPO}                            (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_CNP_CAPITALIZACAO}                (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_BTG_PREVIDENCIA}                  (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_BTG_SEGUROS}                      (//input[contains(@type,'radio')])[4]
${RADIO_BUTTON_RIO_GRANDE_SEGUROS}               (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_ZURICH_BRASIL_SEGUROS}            (//input[contains(@type,'radio')])[5]
${RADIO_BUTTON_INDIANA_SEGUROS}                  (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_BRASILCAP}                        (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_LUIZA_SEG}                        (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_PRUDENTIAL_BRASIL}                (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_PORTO_SEGURO}                     (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_AUSTRAL}                          (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_DARWIN_SEGUROS}                   (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_CAIXA_SEGURADORA}                 (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_CAIXA_CAPITALIZACAO}              (//input[contains(@type,'radio')])[4]
${RADIO_BUTTON_CAIXA_RESIDENCIAL}                (//input[contains(@type,'radio')])[5]
${RADIO_BUTTON_CAIXA_PREVIDENCIA_VIDA}           (//input[contains(@type,'radio')])[6]
${RADIO_BUTTON_SWISS_RE}                         (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_SIMPLE2U}                         (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_EVIDENCE}                         (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_SUL_AMERICA}                      (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_NEO_SEGURADORA}                   (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_PREVISUL}                         (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_ITAU_SEGUROS}                     (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_BRASILSEG}                        (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_TOKIO_MARINE}                     (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_YELUM_SEGUROS}                    (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_TOO_SEGUROS}                      (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_JUSTOS_SEGUROS}                   (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_MAPFRE}                           (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_BRASILPREV}                       (//input[contains(@type,'radio')])[3]
${RADIO_BUTTON_SAFRA_SEGUROS}                    (//input[contains(@type,'radio')])[3]
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