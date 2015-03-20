# -*- encoding : utf-8 -*-

class YahooHomePage < SitePrism::Page
  include Capybara::DSL
  include RSpec::Matchers

  element :menu, ".navlist"
  element :page_body, "body"

end