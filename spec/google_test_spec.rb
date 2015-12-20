require 'google_page'

driver = Selenium::WebDriver.for :firefox
describe GooglePage do

    google_page = GooglePage.new(driver)
    driver.navigate.to google_page.url


  it 'has the right title' do ## This is a test step (apart of rspec)
    expect(google_page.title).to eq google_page.expected_title
  end

  it 'can search for wine' do ## This is a test step (apart of rspec)
    google_page.sendKeysToSearchBox("wine")
    google_page.submitButton
  end

  it 'should do something else' do
    x  = 5
    x  = x + 5
    puts x #should print ten
  end

end

driver.close