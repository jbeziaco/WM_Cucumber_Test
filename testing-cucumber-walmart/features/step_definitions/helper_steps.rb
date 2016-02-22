Then(/^I should see "([^"]*)"$/) do |content|
  assert_text content
  #expect(page).to have_content content
 end

Then(/^I should not see "([^"]*)"$/) do |content|
  assert_no_text content
  #expect(page).to have_no_content(content)
end
