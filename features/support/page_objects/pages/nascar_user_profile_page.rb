# -*- encoding : utf-8 -*-

class NascarUserProfilePage < SitePrism::Page
  include Capybara::DSL
  include RSpec::Matchers

  set_url "/en_us/ajax/dynamic/myNASCAR.html"

  element :logout_button, "input[value='Logout']"

end