#language: pt

Funcionalidade: Pedidos

    Como um usuário do site Starbugs, eu quero selecionar e comprar cafés
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

    Cenario: Compra bem sucedida

        Dado que estou na página inicial da Starbugs
            E que iniciei a compra do item "Expresso Tradicional"
        Quando faço a busca do seguinte CEP: "81110070"
            E informo os demais dados do endereço:
               | Numero      | 6120     |
               | Complemento | Apto 405 |
            E escolho a forma de pagamento "Cartão de Débito"
            E por fim finalizo a compra
        Então sou redirecionado para a página de confirmação de Pedidos
            E deve ser informado um prazo de entrega de 20 a 30 minutos