Given(/^I am on the map page$/) do
  visit 'https://pauliceia.unifesp.br/portal/explore'
  find(:xpath, '/html/body/div/section/div/section/div/section[3]/header/button').click
end

When(/^I fill in "(.*)" with "(.*)"$/) do |xpath, value|
  fill_in with: value
end

And(/^I press "([^"]*)"$/) do |classname|
  find_button(class: classname).click
end

Then(/^I should find "([^"]*)"$/) do |value|
  page.has_content?('Encontrado')
end

Then(/^I should not find "([^"]*)"$/) do |arg|
  page.has_content?('Não encontramos pontos necessarios para a geolocalização nesse logradouro no ano buscado')
end