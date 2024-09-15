#language: pt

Funcionalidade: Uso de Cupons no Checkout

    Como um usuário da Starbugs, 
    Eu quero poder aplicar cupons de desconto na página de checkout, 
    Para que eu possa obter reduções no preço de produtos específicos ou na minha compra total, 
    aumentando a satisfação com a minha experiência de compra.

    Contexto:
        Dado que iniciei a compra de um item:
            | name     | Café com Leite |
            | price    | R$ 19,99       |
            | delivery | R$ 10,00       |
            | total    | R$ 29,99       |

    Cenario: Aplicar Desconto de 20%
        
        Quando aplico esse cupom de desconto: "MEUCAFE"
        Então o valor final da compra deve ser atualizado para "R$ 25,99"

    Esquema do Cenário: Tentativa de aplicar o desconto

        Quando aplico esse cupom de desconto: "<cupom>"
        Então o valor final da compra não deve sofrer alterações
          E uma mensagem de "<saída>" deve ser exibida  

    Exemplos:
    | cupom    | saída           |
    | PROMO20  | Cupom Expirado! |
    | PROMO100 | Cupom Invalido! |