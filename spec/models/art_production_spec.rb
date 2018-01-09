require 'rails_helper'

describe ArtProduction do

  it "Production art has a production number and an amount of colors" do
    expect(ArtProduction.create(:art_production_code => "P1ABCDABCD", :color_amount => 1))
  end
end
