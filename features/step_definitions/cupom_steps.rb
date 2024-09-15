Dado('que iniciei a compra de um item:') do |table|
  @product = table.rows_hash
  @home.open
  @home.buy(product[:name])
  @checkout.assert_product_details(@product)
end

Quando('aplico esse cupom de desconto: {string}') do |coupon_code|
    @checkout.apply_coupon(coupon_code)
end

Então('o valor final da compra deve ser atualizado para {string}') do |total|
    @checkout.assert_total_price(total)
end

Então('uma mensagem de {string} deve ser exibida') do |notice|
    @checkout.notice_msg(notice)
end

Então('o valor final da compra não deve sofrer alterações') do
    @checkout.assert_total_price(@product[:total])
end  