class CartPage
	class << self	
		include Capybara::DSL
	
		def initialize 
		end
		
		def proceedToCheckout
			page.execute_script("$('#btn-finalize-cart').click()")
		end
	
	end

end
