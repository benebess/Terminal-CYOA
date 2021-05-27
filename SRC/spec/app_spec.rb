require_relative '../methods'
require_relative '../story'

#test number one -  tests whether the user input for name will be less than 35 letters

describe "yourname" do 
    it "should be able to check the name length of user name input is less than 35" do
      name = yourname(true, "Teej")
      actual_value = name.length <= 35
      expect(actual_value).to be(true)
    end
end

# test  number two -- that checks the user has entered the correct pronoun

describe "yourpronoun" do
  it "should limit the user response to his/her/their pronouns" do
    pronoun = yourpronoun(true, "her")
    expect(pronoun).to eq("her")
  end
end