Given(/^I am on the sign up page$/) do
  visit 'portal/register'
end

When(/^I fill in my "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |name, email, username, password|
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div[1]/form/div[1]/div[1]/input').set(name)
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div[1]/form/div[1]/div[2]/input').set(email)
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div[1]/form/div[2]/div[1]/input').set(username)
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div[1]/form/div[2]/div[2]/input').set(password)
end

And(/^I agree to the terms of service$/) do
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div[1]/form/div[3]/label[2]', visible: false).set(true)
end


And(/^I click on the Cadastrar button$/) do
  find(:xpath, '/html/body/div[1]/section/div/div/section/div[1]/div[1]/form/button').click
  sleep(5)
end

Then(/^I should receive a "([^"]*)" message$/) do |message|
  expect(page).to have_content(message)
end
