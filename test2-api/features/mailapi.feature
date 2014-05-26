Feature: Fill out SendGrid web API for Mail

# heavily influenced by nikgraf's list of matchers at https://github.com/nikgraf/lettuce_webdriver

Scenario: Go to SendGrid web api page for mail 
  Given I go to "https://sendgrid.com/docs/API_Reference/Web_API/mail.html"
    Then I should see "This endpoint allows you to send email."
    and I should see an element with id of "tryit-mail"

Scenario: Click the tryit-mail button to open a form
  Given I press "tryit-mail"
    Then I should see "Username:"

Scenario: Complete user credentials
  Given I fill in "username" with "lfunk"
    And I fill in "password" with "FAZZwak!99"
    And I select "XML" from "response-format"
    And I press "Save"
    Then I should not see "Authentication error"
    # Back to Mail API web page, with value fields active now
    And I should be at "https://sendgrid.com/docs/API_Reference/Web_API/mail.html"
    # it would be good to figure out a good way of seeing it's writable
    
Scenario: Fill out the mail API form
 Given I see "This endpoint allows you to send email."
    When I fill in "lew.funk@gmail.com" in "to"
    # not required And I fill in "Lewis" in "toname"
    And I fill in "From Sendgrid API" in "subject"
    And I fill in "Test from Lettuce webdriver" in "text"
    And I fill in "<html>Howdy</html>" in "html"
    And I fill in "lfunk@lfunk-sendgrid-code-test.org" in "from"
    And I press "Make Request"

    Then I should not see "400 - Bad Request"
    And I should see "200 - OK"




