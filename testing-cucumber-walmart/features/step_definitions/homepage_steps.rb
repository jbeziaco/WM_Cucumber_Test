
Given(/^that i am on the Wallmart page$/) do
   HomePage.visitPage
 end

Then(/^I will search for "(.*?)"$/) do |productName|
	HomePage.searchFor(productName);
end
