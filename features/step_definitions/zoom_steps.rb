When(/^I click on the "(.*)" button$/) do |button_class|
  find(".#{button_class}").click
end

Then(/^the map scale should be "(.*)"$/) do |scale|
  expect(page).to have_content(scale)
end

When(/^I scroll "([^"]*)" on the map$/) do |direction|
  if direction == 'up'
    page.execute_script('window.scrollBy(0,1000)')
  elsif direction == 'down'
    page.execute_script('window.scrollBy(0,-1000)')
  end

end
