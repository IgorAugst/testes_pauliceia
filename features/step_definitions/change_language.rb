When(/^I click on the language button$/) do
  find(:xpath, '/html/body/div[1]/section/div/header/nav/div/div[2]/i[2]').click
end

Then(/^the language should change to english$/) do
  expect(page).to have_content('Look for an Address')
end