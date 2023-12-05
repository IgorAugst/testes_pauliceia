text = ""

When(/^I click on expand search$/) do
  find(:xpath, '/html/body/div[1]/section/div/section/div/section[1]/form/div/div[3]/button').click
end

And(/^I upload a csv file$/) do
  find(:xpath, '/html/body/div[1]/section/div/section/div/section[1]/div/label/input').set('/home/igor/code/testes/busca.csv')
end

And(/^I set the csv column$/) do
  find(:xpath, '/html/body/div[1]/section/div/section/div/section[1]/div/form/div/div[1]/div[1]/input').click
  find(:xpath, '/html/body/div[2]/div[1]/div[1]/ul/li[1]').click

  find(:xpath, '/html/body/div[1]/section/div/section/div/section[1]/div/form/div/div[2]/div[1]/input').click
  find(:xpath, '/html/body/div[3]/div[1]/div[1]/ul/li[2]').click

  find(:xpath, '/html/body/div[1]/section/div/section/div/section[1]/div/form/div/div[3]/div[1]/input').click
  find(:xpath, '/html/body/div[4]/div[1]/div[1]/ul/li[3]').click
end

And(/^I click on visualizar$/) do
  find(:xpath, '/html/body/div[1]/section/div/section/div/section[1]/div/form/button[1]').click
  sleep(5)
  text = page.driver.browser.switch_to.alert.text
end

Then(/^I should see the results of the search$/) do
  expect(text).to include('foi Encontrado.')
end
