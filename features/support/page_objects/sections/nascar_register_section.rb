# -*- encoding : utf-8 -*-

class RegisterSection < SitePrism::Section
  
  element :email, "input[name='email']"
  element :first_name, "input[name='profile.firstName']"
  element :last_name, "input[name='profile.lastName']"
  element :password, "input[name='password']"
  element :confirmation_password, "input[name='passwordRetype']"
  element :submit_button, "input[value='Submit']"

end