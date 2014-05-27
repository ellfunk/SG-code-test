# from nikgraf's lettuce webdriver setup example on github
from lettuce import *  
from lettuce_webdriver.util import assert_false  
from lettuce_webdriver.util import AssertContextManager  
  
def find_field_by_class(browser, attribute):  
    xpath = "//input[@class='%s']" % attribute  
    elems = browser.find_elements_by_xpath(xpath)  
    return elems[0] if elems else False  
 
@step('I fill in field with class "(.*?)" with "(.*?)"')  
def fill_in_textfield_by_class(step, field_name, value):  
    with AssertContextManager(step):  
        text_field = find_field_by_class(world.browser, field_name)  
        text_field.clear()  
        text_field.send_keys(value) 

# -*- coding: utf-8 -*-
from lettuce import step

@step(u'And I fill in x-smtpapi')
def and_i_fill_in_x_smtpapi(step):
        step.behave_as("""
        Given I fill in "x-smtpapi" with "{xml}" 
    """.format(xml='{"to": ["Lewis Funk <lew.funk@gmail.com>"]}'))

@step(u'And I fill in html')
def and_i_fill_in_html(step):
        step.behave_as("""
        Given I fill in "html" with "{htmlstuff}" 
    """.format(htmlstuff='<html>Howdy</html>'))


@step(u'And I fill in headers')
def and_i_fill_in_headers(step):
        step.behave_as("""
        Given I fill in "headers" with "{headxml}"
    """.format(headxml='{"X-Accept-Language":"en","X-Mailer":"MyApp"}'))


