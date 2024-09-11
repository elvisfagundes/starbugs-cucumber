require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers


    def assert_product_details(product_detail)

        product = find('.item-details h1')
        expect(product.text).to eql product_detail[:name]
    
        sub_total = find('.subtotal .sub-price')
        expect(sub_total.text).to eql product_detail[:price]
    
        delivery = find('.delivery .delivery-price')
        expect(delivery.text).to eql product_detail[:delivery]
    
    end

    def assert_total_price(total_price)
        total = find('.total .total-price')
        expect(total.text).to eql total_price
    end
end