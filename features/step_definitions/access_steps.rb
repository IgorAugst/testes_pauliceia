Given(/^I visit Pauliceia$/) do
  visit 'https://pauliceia.unifesp.br'
end

Then(/^I should see "([^"]*)"$/) do |expected|
  assert_text(expected)
end