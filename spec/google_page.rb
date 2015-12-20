#project/google_page.rb
require 'spec_helper'

class GooglePage

  def initialize(driver)
    @driver = driver
  end

#properties
  def url
    url="http://google.com"
  end

  def expected_title
    expected_title = "Google"
  end


#locators
  def title
    title = @driver.title
  end

  def sendKeysToSearchBox(text)
    searchInputBox = @driver.find_element(:name => "q")
    searchInputBox.send_keys text
  end

  def submitButton
    submitButton = @driver.find_element(:name => "btnK")
    puts "sleeping for 5 seconds"
    sleep(5)
  end

end