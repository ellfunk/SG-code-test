Feature: Go to realestate.com.au 

Scenario: click Buy on realestate.com.au homepage 
  Given I go to "http://www.realestate.com.au"
   When I click "Buy"
   Then The browser's URL should be "http://www.realestate.com.au/buy"

# copy and paste is good, but we should get the button and target from an array

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
