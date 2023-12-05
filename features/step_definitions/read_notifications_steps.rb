When(/^I click on the notification icon$/) do
  find(:xpath, '/html/body/div[1]/section/div/aside/section/button[3]').click
end

Then(/^I should see a list of notifications$/) do
  expect(page).to have_content('Notifications')
end

And(/^I click on a notification$/) do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[5]/div/div/div[2]/div[1]/div/div[1]/div/div[3]/button').click
end

Then(/^I should see a list of comments$/) do
  expect(page).to have_css('.el-dialog__body')
end