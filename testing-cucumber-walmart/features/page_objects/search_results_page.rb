class SearchResultsPage
	
	class << self	
		include Capybara::DSL
		
		def initialize 
		end

		def clickFirstResult
			find('.item-0').click		
		end
		
		def addToCart
			page.execute_script("$('#buybox-Walmart > div.content.content-Walmart > div > div.buy-button-wrapper > button').click()")
		end	
		
		def dismissGuaranteeInsurancePopup
			find('#navegaCarrinho').click
		end

		def accessCart
			find('.cart-link').click
		end
		
		
	end

end