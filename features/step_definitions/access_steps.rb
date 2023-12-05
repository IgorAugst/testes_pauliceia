Given(/^I visit Pauliceia$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |expected|
  assert_text(expected)
end