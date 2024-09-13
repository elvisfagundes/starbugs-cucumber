Dado('que iniciei a compra do item {string}') do |product_name|
    @home.buy(product_name)
end
  
Quando('faço a busca do seguinte CEP: {string}') do |cep|
    @checkout.find_cep(cep)
end

Quando('informo os demais dados do endereço:') do |table|
    @checkout.fill_address(table.rows_hash)
end

Quando('escolho a forma de pagamento {string}') do |payment_type|
    @checkout.payment_method(payment_type)
end

Quando('por fim finalizo a compra') do
    @checkout.submit
end

Então('sou redirecionado para a página de confirmação de Pedidos') do
    @order.order_sucess
end

Então('deve ser informado um prazo de entrega é de: {string}') do |delivery_time|
    @order.assert_delivery_time(delivery_time)
end