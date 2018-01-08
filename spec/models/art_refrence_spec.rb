require 'rails_helper'

describe ArtRefrence do

  it "has a refrence number and color amount" do
    expect {ArtRefrence.create(:art_ref_code => "3REC", :art_color_amount => 4)}
  end
end
