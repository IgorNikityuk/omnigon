# -*- encoding : utf-8 -*-

class SignInSection < SitePrism::Section
  
  element :email, "input[name='username']"
  element :password, "input[name='password']"
  element :submit_button, "input[value='Submit']"

end