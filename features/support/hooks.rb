require 'watir'
require 'selenium-webdriver'
require 'page-object'
require 'require_all'

Before do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end

After do
  @browser.close
end