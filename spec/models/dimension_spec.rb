require 'rails_helper'

describe Dimension do

  it "Demensions are set to width and height based on location" do

    expect{Demension.create(:width => 12.5, :height => 15)}

  end

end
