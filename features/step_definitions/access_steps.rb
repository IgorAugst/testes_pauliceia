Given(/^I visit Pauliceia$/) do
  visit 'http://localhost:8080'
end

Then(/^I should see "([^"]*)"$/) do |expected|
  assert_text(expected)
end