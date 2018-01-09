require 'rails_helper'

describe DecorationType do

  it " Decoration type is the process used to decorate the garmant" do

    expect {DecorationType.create(:code => "P4", :name => "4 color screen print")}
  end

end
