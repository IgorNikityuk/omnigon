require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec/autorun'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'faker'

Dir["./features/support/**/*_section.rb"].each {|file| require file }
Dir["./features/support/**/*_page.rb"].each {|file| require file }

#settings for Firefox
Capybara.register_driver :selenium_firefox do |app|  
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_selector = :css
Capybara.default_driver = :selenium_firefox
Capybara.app_host = 'http://www.nascar.com'
Capybara.default_wait_time = 10
Capybara.current_session.driver.browser.manage.window.maximize
I18n.enforce_available_locales = false