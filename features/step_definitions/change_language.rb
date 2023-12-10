Given(/^I am on the home page$/) do
  visit '/portal/home'
end

When(/^I clicke on the Portuguese language button$/) do
  find(:xpath, '/html/body/div/section/div/header/nav/div/div[2]/i[1]').click
end

When(/^I click on the language button$/) do
  find(:xpath, '/html/body/div[1]/section/div/header/nav/div/div[2]/i[2]').click
end

Then(/^the language should change to english$/) do
  expect(page).to have_content('Look for an Address')
end

Then(/^the language should change to Portuguese$/) do
  expect(page).to have_content('Quando ficará pronta?')
end
