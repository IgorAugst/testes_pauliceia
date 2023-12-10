Given(/^I am on the Profile page$/) do
  visit 'portal/dashboard/profile'
end

And(/^I edit the name for "([^"]*)"$/) do |name|
  find(:xpath, '/html/body/div/section/div/div/div[2]/div/div/div/form/div/div[2]/div[1]/input').set(name)
end

And(/^I edit the user name for "([^"]*)"$/) do |username|
  find(:xpath, '/html/body/div/section/div/div/div[2]/div/div/div/form/div/div[2]/div[3]/input').set(username)
end

And(/^I press Profile$/) do
  find(:xpath, '/html/body/div[1]/section/div/header/nav/div/div[1]/div/button/div').click
  sleep(5)
end

And(/^I press My Profile$/) do
  find(:xpath, '/html/body/div[2]/div/ul/li[1]/a/div').click
  sleep(5)
end

And(/^I press Submit$/) do
  find(:xpath, '/html/body/div/section/div/div/div[2]/div/div/div/form/div/div[3]/div/a').click
  sleep(5)
end

Then(/^I should be on dashboard page$/) do
  expect(current_url).to include '/portal/dashboard/home'
end
