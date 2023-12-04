Given(/^I am on the home page$/) do
  visit 'http://localhost:8080/'
end

When(/^I fill in "(.*)" with "(.*)"$/) do |xpath, value|
  print(xpath)
  fill_in with: value
end

And(/^I press "([^"]*)"$/) do |classname|
  find_button(class: classname).click
end

Then(/^I should find "([^"]*)"$/) do |value|
  page.has_content?(value)
end