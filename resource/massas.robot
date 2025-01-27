*** Settings ***
Library            SeleniumLibrary

*** Variables ***
#MASSAS DE TESTES
&{MASSA_HDI}                             nome=Regressivo PF GLOBAL_HDI       cpf=61890112097    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=01118005000076    #PATRIMONIAL    
&{MASSA_GLOBAL}                          nome=Regressivo PF HDI_GLOBAL       cpf=05263257716    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=03001151004642    #PATRIMONIAL/ENGENHARIA
&{MASSA_SANTANDER}                       nome=Regressivo PF HDI_SANTANDER    cpf=77311620015    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=04001904586611    #AUTO_SANTANDER
&{MASSA_HDI_AUTO}                        nome=Regressivo PF SANTANDER_HDI    cpf=07644482938    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=01001431198641    #AUTO_HDI
&{MASSA_GLOBAL_PJ}                       nome=Regressivo PJ HDI_GLOBAL       cnpj=26609160000126    cpf=01618572563    socio=83533532534    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=03001367000205    #PATRIMONIAL/EMPRESARIAL
&{MASSA_HDI_PJ}                          nome=Regressivo PJ GLOBAL_HDI       cnpj=09317858000159    cpf=71481907034    socio=71481966049    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=01029162003581    #RURAL
&{MASSA_SANTANDER_PJ}                    nome=Regressivo PJ HDI_SANTANDER    cnpj=04995673000180    cpf=06755550000    socio=77311620015    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=04001904327776    #AUTO_SANTANDER 
&{MASSA_HDI_AUTO_PJ}                     nome=Regressivo PJ SANTANDER_HDI    cnpj=04497542000172    cpf=22766391134    socio=61674443234    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=01001431198974    #AUTO_HDI 
#&{MASSA_HDI_AUTO_PJ}                    nome=Regressivo PJ SANTANDER_HDI    cnpj=26609160000126    cpf=01618572563    socio=83533532534    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=01001431198973    #AUTO_HDI 
&{FUNCIONAL_GLOBAL_LUCROS_CESSANTES}     nome=Regressivo PJ HDI_GLOBAL       cnpj=49323579000112    cpf=18669460807    socio=71775201120    email=opin@regressivo.com.br    senha=Hdiseguros@123    apolice=03003957000015    #PATRIMONIAL/EMPRESARIAL
#LOADINGS
${AGUARDAR_CARREGAMENTO}                 //*[@class="warning"]                    
${AGUARDAR_REDIRECIONAMENTO}             //h1[@class='title'][contains(.,'Por favor aguarde, você está sendo redirecionado.')]
#ERRO CERTIFICADO
${PROBLEMA_CERTIFICADO}                  //*[@id="details-button"]


*** Keywords ***
Abrir o navegador
    Open Browser                         browser=Chrome


