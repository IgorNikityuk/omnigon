# encoding: utf-8

Given(/^I open yahoo home page$/) do
  @page = YahooHomePage.new
  visit 'https://www.yahoo.com/'
end

When(/^I click "(.*?)" section in left side$/) do |section_name|
  #set time for start
  @start_page_load_time = Time.now
  @page.menu.first(:xpath, "//*[contains(text(), '#{section_name}')]").click
end

Then(/^page should load in "(.*?)" seconds$/) do |second_count|
  #set waiting for logo. It is more effective than without it
  #But maybe there is another variant
  @page.wait_until_page_body_visible
  #set time for end of gathering
  @end_page_load_time = Time.now
  #get the difference between times
  difference = (@end_page_load_time - @start_page_load_time).to_f
  expect(difference).to be < second_count.to_i
  puts 'Loading page took ' + difference.to_s + ' seconds'
end