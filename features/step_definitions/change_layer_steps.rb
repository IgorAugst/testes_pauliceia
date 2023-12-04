When(/^I click on the layer button$/) do
  find('p.btn_sidebar').click
end

Then(/^I should see a list of layers$/) do
  expect(page).to have_text('Modelo Digital de Elevação de São Paulo (colorido)')
end

When(/^I click on a layer$/) do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/section/ul/section/section[2]/div[3]/div').click
end

Then(/^I should see the map with the selected layer$/) do
  expect(page).to have_text('Construinhdo Mapa')
end