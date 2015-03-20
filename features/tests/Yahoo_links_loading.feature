Feature: Yahoo navigation menu

Scenario Outline: All pages from links in navigation menu should be loaded in 7 seconds
	Given I open yahoo home page
	When I click "<section>" section in left side
	Then page should load in "7" seconds

  Examples:
    | section  		|
    | Mail  		|
    | News 			|
    | Sports	 	|
    | Finance 		|
    | Weather 		|
    | Autos 		|
    | Homes 		|
    | Dating 		|
    | Shopping 		|
    | Makers 		|
    | Parenting 	|
    | Health 		|
    | Style 		|
    | Beauty 		|
    | Food 			|
    | Movies 		|
    | Travel 		|
    | Tech 			|
    | TV 			|