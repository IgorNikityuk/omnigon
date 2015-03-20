# -*- encoding : utf-8 -*-

class NascarHomePage < SitePrism::Page
  include Capybara::DSL
  include RSpec::Matchers

  set_url "/"

  element :register_link, ".gigyaRegisterDialog"
  element :login_link, ".gigyaLoginDialog"
  element :profile_link, "#myProfileLink"

  section :registration, RegisterSection, ".gigya-screen-content.gigya-screen-dialog-content"
  section :sign_in, SignInSection, ".gigya-screen-content.gigya-screen-dialog-content"

end