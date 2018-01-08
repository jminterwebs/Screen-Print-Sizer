require 'rails_helper'

describe Location do

  it "Locations have a code and a Name" do
    expect {Location.create(:location_code => "FC", :name => "Full Chest")}.to_not raise_error
  end
  
end
