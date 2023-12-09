Given(/^I am on the Profile page$/) do
  visit 'portal/dashboard/profile'
end

When(/^I edit in my name in profile information "([^"]*)"$/) do |nome|
  find(:xpath, '/html/body/div/section/div/div/div[2]/div/div/div/form/div/div[2]/div[1]/input').set(nome)
end

And(/^I press Submit$/) do
  find(:xpath, '/html/body/div/section/div/div/div[2]/div/div/div/form/div/div[3]/div/a').click
  sleep(5)
end

Then(/^I should be on dashboard page$/) do
  expect(current_url).to include '/portal/dashboard/home'
end

Then(/^I should receive an success "(.*)"$/) do |message|
  expect(page).to have_content(message)
end
