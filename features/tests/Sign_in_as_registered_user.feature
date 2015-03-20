Feature: Sign-in and Register pages

	Scenario: Verify that user can be registered and after that it can be sign-ined

		Given I open nascar home page
		When I go to Register section
		And I register new user
		
		#I know that this is repeatable steps. We can use this one [Then I should see logged in and I make logout] instead of next steps
		Then I should see that my user logged in
		When I go to user profile page
		And I make logout
		Then I should see sign in section

		When I sign in as registered user
		
		#We can use [Then I should see logged in and I make logout]
		Then I should see that my user logged in
		When I go to user profile page
		And I make logout
		Then I should see sign in section