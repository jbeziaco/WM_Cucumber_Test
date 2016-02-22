class CheckoutPage
	class << self	
		include Capybara::DSL
		
		def initialize 
		end
	
		def performLogin
		
			  browser = page.driver.browser
			  browser.switch_to.frame("iframeLogin")
			  
			  find('#signinField').set(ENV['SIGN_IN']);	
			  find('#password').set(ENV['PASSWORD']);	
			  find('#signinButtonSend').click
			  
			  page.driver.browser.switch_to.default_content
			 
			 
			 if page.has_selector?('iframe#iframeLogin')
				puts "Login was not sucessfull"
				browser = page.driver.browser
				browser.switch_to.frame("iframeLogin")
		
				#puts page.has_text?('Campo obrig')
				assert_no_text('Campo obrigatório')
				assert_no_text('Digite um email, CPF ou CNPJ válido')
				assert_no_text('Usuário ou senha inválidos')
					
				puts "Login was not sucessfull - Untreated error"
			
			else 
				puts "Login was sucessfull"
			end
			 
		end
		
	
	end

end
