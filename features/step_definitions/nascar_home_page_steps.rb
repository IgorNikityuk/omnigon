Given(/^I open nascar home page$/) do
  @page = NascarHomePage.new
  @page.load
end

When(/^I go to Register section$/) do
  @page.register_link.click
end

And(/^I register new user$/) do
  #set random values for user
  @user = { email: Faker::Internet.free_email, first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,  password: '1q2w3e4r' }

  #use random values for setting in fields
  @page.registration.email.set @user[:email]
  @page.registration.first_name.set @user[:first_name]
  @page.registration.last_name.set @user[:last_name]
  @page.registration.password.set @user[:password]
  @page.registration.confirmation_password.set @user[:password]
  @page.registration.submit_button.click
end

Then(/^I should see logged in and I make logout$/) do
  step ('I should see that my user logged in')
  step ('I go to user profile page')
  step ('I make logout')
end

Then(/^I should see that my user logged in$/) do
  #@page.wait_until_profile_link_visible
  #expect(@page.profile_link).to be_visible
end

When(/^I go to user profile page$/) do
  @page.profile_link.click
  @page = NascarUserProfilePage.new
end

Then(/^I should see sign in section$/) do
  expect(@page.sign_in).to be_visible
end

When(/^I sign in as registered user$/) do
  @page.sign_in.email.set @user[:email]
  @page.sign_in.password.set @user[:password]
  @page.sign_in.submit_button.click
end

