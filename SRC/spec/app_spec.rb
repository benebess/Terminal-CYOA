require_relative '../methods'
require_relative '../story'

def setup
    before(:each) do
      @beginning = Beginning.new
    end
end


#test that the user input for name will be less than 35 letters
describe "yourname" do 
    it "should be able to check the name length of user name input is less than 35" do
      name = yourname(true, "Teej")
      actual_value = name.length <= 35
      expect(actual_value).to be(true)
    end
end


describe "yourpronoun" do
  it "should be able to gi"