Feature: Search listings

# heavily influenced by nikgraf's list of matchers at https://github.com/nikgraf/lettuce_webdriver
# found element names via right-click "inspect element"

Scenario: Run a search on realestate.com.au
    Given I go to "http://realestate.com.au/buy"


    When I fill in "where" with "Richmond, VIC"
    And I uncheck "includeSurrounding"

    And I check "apartment"
#    When I click "area_VIC"

#    And I click "apartment" # Nope, it's not a link
#    And I select "apartment" from "propertyType" # and it's not a select either


#    When I check "apartment"
#    and I fill in "where" with "Richmond, VIC"

#    and I click "clear all"
#    And I check "apartment"
#    And I uncheck "all"
#    and I check "clear all" in "LMIDD_propertyTYpe"
 #   And I check "apartment" from "propertytypegroup"
#    And I check "ddCb_propertyType_3" from "propertyType"
#     And I check "ddCb_propertyType_3" from "propertytypegroup"
#    And I check "//*[@id="ddCb_propertyType_3"]" from "propertyType"
#     And I check "apartment" from "propertyType"
#    And I check "ddCb_propertyType_3" from "propertyType"
#    And I select "500,000" from "maxPrice"

    and I press "searchBtn"
#    Then the browser's URL should be "http://www.realestate.com.au/buy/property-apartment-between-0-500000-in-richmond%2c+vic/list-1"
#    and I should see "Results for apartments for sale between $0 and $500,000 in Richmond, VIC 3121"
#    and I should not see "We couldn't find anything matching your search criteria:"
    Then I should not see "We couldn't find anything matching your search criteria:"
    and I should see "Richmond, VIC 3121"

