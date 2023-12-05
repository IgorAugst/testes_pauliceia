Given(/^I am on the login page$/) do
  visit 'portal/login'
end

When(/^I fill in my account information "([^"]*)" and "([^"]*)"$/) do |email, password|
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[1]/input').set(email)
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[2]/input').set(password)
end

And(/^I press Entrar$/) do
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[3]/button').click
  sleep(5)
end

Then(/^I should be on home page$/) do
  expect(current_url).to include '/portal/explore'
end

Then(/^I should receive an error "(.*)"$/) do |message|
  expect(page).to have_content(message)
end