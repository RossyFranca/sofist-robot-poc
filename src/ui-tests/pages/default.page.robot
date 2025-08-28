***Settings***
Library  SeleniumLibrary

***Variables***
${URL_BASE}     https://seubarriga.wcaquino.me
${BROWSER}      chrome

***Keywords***

Abrir navegador
    Open Browser   ${URL_BASE}   ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

Escrever
    [Arguments]  ${LOCATOR}  ${Text}
    ${input_locator}= Find Element with Self Healing  ${LOCATOR}
    Input Text  ${input_locator}  ${Text}
#
Clicar
    [Arguments]  ${LOCATOR}
    ${buttom_locator}= Find Element with Self Healing  ${LOCATOR}
    Click element  ${buttom_locator}