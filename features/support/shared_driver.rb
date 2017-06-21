require 'rubygems'
require 'rspec'
require 'watir'

browser = Watir::Browser.new :firefox

Before do
  @username = 'XXXX'
  @password = 'XXXX'
  @browser = browser
end
