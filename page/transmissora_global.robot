*** Settings ***
Library            SeleniumLibrary
Resource           ../resource/massas.robot


*** Variables ***
#AREA DE LOGIN
${TELA_LOGIN_TRANSMISSORA_GLOBAL}                     //button[contains(@ng-reflect-ng-class,'[object Object]')]
${BUTTON_COMECAR}                                     //button[@ng-reflect-ng-class='[object Object]'][contains(.,'começar')]
${BUTTON_CPF}                                         //button[contains(.,'CPF')]  
${BUTTON_CNPJ}                                        //button[contains(.,'CNPJ')]
${PLACE_HOLDER_CNPJ_TRANSMISSORA}                     //input[contains(@ng-reflect-mask-expression,'00.000.000/0000-00')]
${PLACE_HOLDER_CPF_TRANSMISSORA}                      //input[contains(@placeholder,'Digite seu CPF')]
${PLACE_HOLDER_SENHA_TRANSMISSORA}                    //input[contains(@placeholder,'Digite sua senha')]
${BUTTON_ACESSAR}                                     //button[@ng-reflect-ng-class='[object Object]'][contains(.,'Acessar')]

#AREA LOGADA     
${CHECKBOX_APOLICE_TRANSMISSORA_PATRIMONIAL}          //input[@id='03001151004642']
${BUTTON_CONFIRMAR_COMPARTILHAMENTO_TRANSMISSORA}     //button[contains(.,'CONFIRMAR COMPARTILHAMENTO')]
${BUTTON_CONFIRMAR}                                   //button[contains(@class,'btn confirm ng-tns-c12-0')]

#EMAIL SÓCIOS
${ESCREVER_EMAIL_REQUERENTE}                          opin_321@opinteste.com.br
${BUTTON_SALVAR1}                                     //*[@id="btnEmail-rec"]                 
${ESCREVER_EMAIL_SOCIO}                               opin_3210@opinteste.com.br
${BUTTON_SALVAR2}                                     //*[@class="btnSaveDynamic"]
${CHECKBOX_TERMOS_VERDADEIROS}                        //input[contains(@type,'checkbox')]
${CONFIRMAR_COMPARTILHAMENTO}                         //button[contains(.,'CONFIRMAR COMPARTILHAMENTO')]   

*** Keywords ***
#TELA DE LOGIN
Sou direcionado TRANSMISSORA OPIN ${tela_login_transmissora_hdi} e clico em comecar
    Wait Until Element Is Visible        ${BUTTON_COMECAR}    timeout=60   
    Click Button                         ${BUTTON_COMECAR}      
          
seleciono o button ${button_cnpj}
    Click Button   ${button_cnpj}

clico em ${place_holder_cnpj} preencho o input filed CNPJ ${massa_global_pj.cnpj} 
    Input Text    ${place_holder_cnpj}    ${massa_global_pj.cnpj}    

clico em ${place_holder_cpf} preencho o input field USUARIO ${massa_global_pj.cpf} 
    Input Text    ${place_holder_cpf}    ${massa_global_pj.cpf}    

clico em ${place_holder_senha} preencho o input field SENHA ${massa_global_pj.senha} 
    Input Text    ${place_holder_senha}    ${massa_global_pj.senha}

clico no BUTTON ACESSAR e sou direcionado para area logada
    Sleep                            2
    Click Button                     ${BUTTON_ACESSAR}
    Wait Until Element Is Visible    //h1[@class='title']    timeout=20

Sou direcionado AREA LOGADA TRANSMISORA OPIN e seleciono produto "${apolice_habitacional}"
    Wait Until Element Is Not Visible        ${AGUARDAR_CARREGAMENTO}   timeout=10  
    Click Element                            ${apolice_habitacional}    action_chain=true

clico no Button CONFIRMAR COMPARTILHAMENTO
    Click Element    ${BUTTON_CONFIRMAR_COMPARTILHAMENTO_TRANSMISSORA}

clico no Button CONFIRMAR
    Click Element    ${BUTTON_CONFIRMAR}   

preencho com a informacao de e-mail do primeiro socio "${email_requerente}" e clico em salvar "${button_salvar1}"
    Sleep                     1   
    Input Text                //input[contains(@id,'inputEmail-requerent')]    ${email_requerente}
    Click Element             ${button_salvar1}

preencho com a informacao de e-mail do segundo socio "${email_socio}" e clico em salvar "${button_salvar2}"
    Input Text                //input[contains(@id,'inputEmail-0')]   ${email_socio}
    Click Element             ${button_salvar2}

 clico na checkbox "${checkbox_termos_verdadeiros}" e clico no BUTTON em "${confirmar_compartilhamento}"
    Click Element    ${checkbox_termos_verdadeiros}    action_chain=true
    Click Element    ${confirmar_compartilhamento} 

Apos carregar informacoes sou direcionado para tela de CALL BACK
    Wait Until Page Does Not Contain Element    ${AGUARDAR_CARREGAMENTO}    timeout=40
    Wait Until Page Does Not Contain Element    ${AGUARDAR_REDIRECIONAMENTO}    timeout=40
    Wait Until Page Does Not Contain Element    ${AGUARDAR_CARREGAMENTO}    timeout=40
    Wait Until Page Does Not Contain Element    ${AGUARDAR_REDIRECIONAMENTO}    timeout=40
    Wait Until Element Is Visible               locator=//*[@title="Resumo do Compartilhamento"]    timeout=40
    Element Should Contain                      //*[@title="Resumo do Compartilhamento"]    Resumo do Compartilhamento  
    Element Should Not Be Visible               //p[contains(@class,'description ng-tns-c12-0')]  
    Capture Page Screenshot