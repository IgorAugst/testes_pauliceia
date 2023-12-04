Given(/^I am on the map page$/) do
  visit 'https://pauliceia.unifesp.br/portal/explore'
end

When(/^I fill in "(.*)" with "(.*)"$/) do |xpath, value|
  fill_in with: value
end

And(/^I press "([^"]*)"$/) do |classname|
  find_button(class: classname).click
end

Then(/^I should find "([^"]*)"$/) do |value|
  page.has_content?(value)
end