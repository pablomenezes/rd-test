require 'site_prism'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'

Capybara.register_driver :chrome do |app|
  Selenium::WebDriver::Chrome.driver_path = "libs/chromedriver"
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome
Capybara.default_max_wait_time = 7
Capybara.app_host = "https://app-staging.rdstation.com.br"
Capybara.current_session.driver.browser.manage.window.maximize

World(Capybara::DSL)
