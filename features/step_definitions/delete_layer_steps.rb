text = ""
alert = nil

And(/^I visit the Dashboard page$/) do
  visit '/portal/dashboard/home'
end

And(/^I click on Delete Layer button$/) do
  find(:xpath, '/html/body/div/section/div/div/main/div/div/div/div[2]/div[1]/div/div/div[1]/div[2]/button[1]').click
  sleep(2)
  alert = page.driver.browser.switch_to.alert
  text = alert.text
end

Then(/^I should see a confirmation box$/) do
  expect(text).to include('Você tem certeza que deseja deletar esta camada?')
  sleep(1)
end
