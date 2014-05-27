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
    
Scenario: Fill out the mail API form mandatory fields
 Given I see "This endpoint allows you to send email."
    When I fill in "to" with "lew.funk@gmail.com"
    And I fill in "toname" with "Lewis"

# Lettuce calling steps from step definitions to pass multiline from:
#  http://lettuce.it/tutorial/steps-from-step-definitions.html
# hacky but it worked...

# Write my own hacky step to fill in multiline xml for x-smtpapi field:
    And I fill in x-smtpapi

    And I fill in "subject" with "From Sendgrid API"
    And I fill in "text" with "Test from Lettuce webdriver" 

# Make my own hacky step to fill in HTML: 
    And I fill in html

    And I fill in "from" with "lfunk@lfunk-sendgrid-code-test.org" 
    And I fill in "bcc" with "lewislewis99@yahoo.com"
    And I fill in "fromname" with "Lettuce Lewis"
    And I fill in "replyto" with "lew.funk@gmail.com"

    # Enhancement: figure out how to make Python put the date in here:
    And I fill in "date" with "Mon, 26 May 2014 16:49:07 +0700"

    # Files and Content: figure out how to attach a local file and its content ID

# Make my own hacky step to fill in headers:
    And I fill in headers

    And I press "Make Request"

    Then I should not see "400 - Bad Request"
    And I should see "200 - OK"




