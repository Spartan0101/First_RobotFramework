*** Settings ***
Documentation    This is some basic information about the whole suite
Library          SeleniumLibrary

# Run the script from the terminal
# robot -d Results tests/crm.robot

*** Variables ***



*** Test Cases ***
Should be able to add a new customer
    [Documentation]         This is some besic information
    [Tags]                  1006   Smoke   Contacts
    # Initialize Selenium
    Set selenium speed      .2s
    Set selenium timeout     10s
    # open the browser
    log                      Starting the test case.
    open Browser    https://automationplayground.com/crm/     chrome     options=add_argument("disable-search-engine-choice-screen")

    # resize browser window
    # Set window position      x=341          y=169
    # set window size          width=1935     height=1098

    click link               SignIn    # or id="etc" or name="etc" or href login.html

    sleep                    3s
    #close browser


*** Keywords ***
