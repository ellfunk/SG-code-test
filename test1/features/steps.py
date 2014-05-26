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

# from pythonhosted.org lettuce tables tutorial
from lettuce import step
@step('I have the following pages in my database:')
def pages_in_database(step):
    for page_dict in step.hashes:
        page = Page(**page_dict)
	page.save

@step(u'When I click the button ''')
def when_i_click_the_button(step):
    assert False, 'This step must be implemented'

@step(u'Then The browser\'([^\']*)\''')
def then_the_browsergroup1(step, group1):
    assert False, 'This step must be implemented'








