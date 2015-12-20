# having the "hash" or pound sign indicates a comment... doesnt effect the code, it is ignored.

#require will "import" the google_page.rb. If you want to create say, yahoo_page, you will need to 'require' it here also
require 'google_page'


#driver is the "webdriver" and in the case, it is the "firefox" driver
#this line will "open" the firefox application browser
driver = Selenium::WebDriver.for :firefox

#this is the start of the 'rspec' class
describe GooglePage do

  #google_page creates a new "GooglePage" object and passes the webDriver so we can control firefox functionality
    google_page = GooglePage.new(driver)

    #this will request firefox to navigate to the url
    driver.navigate.to google_page.url

    #This is first rspec test.
    #all rspec tests need:   it 'string' do end, and in between the do/end is the test scope
  it 'has the right title' do ## This is a test step (apart of rspec)

    #expect is comparing that the title of google is what we expect it to be
    expect(google_page.title).to eq google_page.expected_title

    #end of the test
  end

  it 'can search for wine' do ## This is a test step (apart of rspec)

    #hold command button, and click the sendKeysToSearchBox text, you can follow the code more there
    google_page.sendKeysToSearchBox("wine")
    #likewise, hold command, and click the submitButton text
    google_page.submitButton
  end


    #this is useless, just math and showing that you can print stuff to the console
  it 'its like math or something..' do


    x  = 5
    x  = x + 5
 #puts will print logs out to the terminal/console
    puts 'this should print to the terminal/console'
    puts x #should print ten
  end

end


#This will close the firefox driver
driver.close