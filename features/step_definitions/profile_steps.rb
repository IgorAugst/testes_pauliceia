Given(/^I am on the Profile page$/) do
  visit 'portal/dashboard/profile'
end

When(/^I edit the name for "([^"]*)"$/) do |name|
  find(:xpath, '/html/body/div/section/div/div/div[2]/div/div/div/form/div/div[2]/div[1]/input').set(name)
end

When(/^I edit the user name for "([^"]*)"$/) do |username|
  find(:xpath, '/html/body/div/section/div/div/div[2]/div/div/div/form/div/div[2]/div[3]/input').set(username)
end

And(/^I press Submit$/) do
  find(:xpath, '/html/body/div/section/div/div/div[2]/div/div/div/form/div/div[3]/div/a').click
  sleep(5)
end

Then(/^I should be on dashboard page$/) do
  expect(current_url).to include '/portal/dashboard/home'
end
