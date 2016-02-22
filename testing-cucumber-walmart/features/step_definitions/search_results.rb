Then(/^I will click in the first result$/) do 
	SearchResultsPage.clickFirstResult
end

Then(/^I will add the product to the cart$/) do
	SearchResultsPage.addToCart
end

Then(/^I will dismiss the guarantee insurance popup$/) do
	SearchResultsPage.dismissGuaranteeInsurancePopup
end

Then(/^I will access the cart page$/) do
	SearchResultsPage.accessCart
end