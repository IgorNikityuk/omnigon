It is test project for Omnigon

:SETUP
1. download project
2. open project folder in cmd
3. execute 'bundle install'
4. execute 'cucumber features'
4. or you can execute 'rake features'
4. or if you have xvfb execute 'xvfb-run cucumber features'

8:30 - 8:40 => install all gems and in future time 
I also spent some time for installing faker and pry gems
8:40 - 9:30 => 
create page objects for pages
create steps for using page objects
9:30 - 9:35 => wrote first feature "Sign in as registered user"

10:40 - 12:10 => wrote second feature "Yahoo links loading"
12:25 - 12:40 => wrote in README.md file report

So writing 2 features, background for them and some optimization took 2 hours and 30 minutes.
I tried to write in different ways. So in features you can find them.

Also when I was writing feature "Yahoo links loading" first time I tried to check loading page
by logo, but got that not all pages have logo. That's why I choose 'body' selector for checking page loading.
Also I used Cucumber examples instead of page.all in "Yahoo links loading" feature. Cause it is more usable and faster.

Thank you for task and time for checking it.