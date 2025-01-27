*** Settings ***
Library            SeleniumLibrary
Resource           ../resource/massas.robot


*** Variables ***
${TELA_LOGIN_TRANSMISSORA_HDI}    //button[contains(.,'começar')]  
${BUTTON_CNPJ}                    //button[contains(.,'CNPJ')]
${PLACE_HOLDER_CNPJ}              //input[contains(@name,'CNPJ')]
${PLACE_HOLDER_CPF}               //input[@placeholder='Digite seu CPF']
${PLACE_HOLDER_SENHA}             //input[@type='password']
${BUTTON_ACESSAR}                 //button[contains(.,'ACESSAR')]

*** Keywords ***
Sou direcionado TRANSMISSORA OPIN ${tela_login_transmissora_hdi} e clico em comecar
    Click Button    ${tela_login_transmissora_hdi}

extraio o consentimento da URL HDI Seguros


seleciono o button ${button_cnpj}
    Click Button    ${button_cnpj}

clico e preencho o input filed CNPJ ${massa_hdi_pj.cnpj}
    Input Text    locator= ${PLACE_HOLDER_CNPJ}    text=${massa_hdi_pj.cnpj}
    
clico e preencho o input field USUARIO ${massa_hdi_pj.cpf}
    Input Text    locator= ${PLACE_HOLDER_CPF}     text=${massa_hdi_pj.cpf}

clico e preencho o input field SENHA ${MASSA_HDI_PJ.senha}    
    Input Text    locator= ${PLACE_HOLDER_SENHA}   text=${massa_hdi_pj.cpf}

Então clico no BUTTON ACESSAR e sou direcionado para area logada   
    Click Button    ${BUTTON_ACESSAR}  

