# from bbangert's lettuce webdriver examples on github
from lettuce import before, world
from selenium import webdriver
import lettuce_webdriver.webdriver

@before.all
def setup_browser():
    world.browser = webdriver.Firefox()

# from lettuce.it terrain examples and selenium-python.readthedocs.org api doc:
from lettuce import *

@after.all
def say_goodbye(total):
    print "Congratulations, %d of %d scenarios passed!" % (
        total.scenarios_passed,
        total.scenarios_ran,
    )
    print "Goodbye!"

#    world.browser.close()  

