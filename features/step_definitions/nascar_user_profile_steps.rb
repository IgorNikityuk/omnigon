Given(/^I make logout$/) do
  @page.logout_button.click
  @page = NascarHomePage.new
end