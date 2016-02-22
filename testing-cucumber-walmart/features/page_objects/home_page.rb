class HomePage
	class << self	
		include Capybara::DSL
	
		def initialize 
		end
		
		def visitPage
			visit 'https://www.walmart.com.br/'
			#visit 'https://www2.walmart.com.br/checkout/content/#chooseAddress'
		end
	
		def searchFor(content)
			find('#suggestion-search').set(content)
			find('#suggestion-search').native.send_keys(:return)	
		end
	
	end

end


