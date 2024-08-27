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
    open Browser             https://automationplayground.com/crm/     chrome     options=add_argument("disable-search-engine-choice-screen")

    # resize browser window
    # Set window position      x=341          y=169
    # set window size          width=1935     height=1098

    page should contain      Customers Are Priority One!    # or wait until page contains

    click link               SignIn    # or id="etc" or name="etc" or href login.html

    page should contain      Login

    input text               id=email-id    C3wRq@example.com
    input text               id=password    123456

    click button             id=submit-id
    page should contain      Our Happy Customers

    click link               id=new-customer
    page should contain      Add Customer

    input text               id=EmailAddress    C3wRq@example.com
    input text               id=FirstName       John
    input text               id=LastName        Doe
    input text               id=City            Dallas
    select from list by value    id=StateOrRegion    TX
    select radio button      gender   male
    select checkbox          name=promos-name
    click button             Submit
    wait until page contains  Success! New customer added.

    sleep                    3s
    close browser


*** Keywords ***
