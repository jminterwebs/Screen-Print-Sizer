require 'rails_helper'

describe Ink do

  it "Ink has a code and name" do
      expect {Ink.create(:color_code => 'Ink001', :name => 'Navy Ink')}.to_not raise_error

  end

end
