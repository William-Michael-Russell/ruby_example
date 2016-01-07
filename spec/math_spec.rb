# having the "hash" or pound sign indicates a comment... doesnt effect the code, it is ignored.

#require_relative will import the spec_helper settings
require_relative'spec_helper'


#this is the start of the 'rspec' class
describe 'We Love Math' do

  it 'its like math or something..' do


    x  = 5
    x  = x + 5
    #puts will print logs out to the terminal/console
    puts 'this should print to the terminal/console'
    puts x #should print ten
  end

end