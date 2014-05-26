Feature: Search listings

# heavily influenced by nikgraf's list of matchers at https://github.com/nikgraf/lettuce_webdriver

Scenario: Run a search on realestate.com.au
    Given I go to "http://realestate.com.au/buy"
    When I fill in "Where" with "Richmond, VIC"
    And I select "Apartment" from "Property Type"
    And I select "500,000" from "Max Price"
    and I press "Search"
    Then the browser's URL should be "http://www.realestate.com.au/buy/property-apartment-between-0-500000-in-richmond%2c+vic/list-1"
    and I should see "Results for apartments for sale between $0 and $500,000 in Richmond, VIC 3121"
    and I should not see "We couldn't find anything matching your search criteria:"



