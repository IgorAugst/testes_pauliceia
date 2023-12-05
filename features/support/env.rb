require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'


Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('start-maximized')
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 10
  config.app_host = 'http://localhost:8080'
end