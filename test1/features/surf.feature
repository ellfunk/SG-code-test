Feature: Go to realestate.com.au 

Scenario: click Buy on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Buy"
   Then The browser's URL should be "http://www.realestate.com.au/buy"

# copy and paste is good, but we should get the button and target from an array
# could use Python capitalize() case to make Buy from "buy"
# I'll do copy and paste for now, and come back to explore this if time permits.
#Scenario: hit the top-level links
#    Given I have the following pages in my database:
#      | link	| target				|
#      | Buy	| www.realestate.com.au/buy		|
#      | Rent	| www.realestate.com.au/rent		|
#    When I click the button ''
#    Then The browser's URL should be '' 


Scenario: click Rent on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Rent"
    #Then I wait 30 seconds
   Then The browser's URL should be "http://www.realestate.com.au/rent"
   #Then I should see "Find rental properties" within 4 seconds

Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Invest"
   Then The browser's URL should be "http://www.realestate.com.au/invest"

Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Sold"
   Then The browser's URL should be "http://www.realestate.com.au/sold"

Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Share"
   Then The browser's URL should be "http://www.realestate.com.au/share"

Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "New homes"
   Then The browser's URL should be "http://www.realestate.com.au//new-homes/new-land+estates"

Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Retire"
   Then The browser's URL should be "http://www.realestate.com.au/retire"

Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Find agents"
   Then The browser's URL should be "http://www.realestate.com.au/find-agent"


Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Home ideas"
   Then The browser's URL should be "http://www.realestate.com.au/home-ideas"

Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Blog"
   Then The browser's URL should be "http://www.realestate.com.au/blog"

#Commerical opens a new tab but leaves the original tab at the originating page...
Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Commercial"
   Then The browser's URL should be "http://www.realestate.com.au/commercial"

# Do "Sign In" and "Join" count as "main header links"?  Easy enough to add them...


Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Sign in"
   Then The browser's URL should be "http://www.realestate.com.au/my-real-estate/login"

Scenario: click Invest on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Join"
   Then The browser's URL should be "http://www.realestate.com.au/my-real-estate/register"
























