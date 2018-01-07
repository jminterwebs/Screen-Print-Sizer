require 'rails_helper'

describe Garment do

it 'has a style code and name' do
  expect {Garment.create(:style_code => '207', :name => 'Classic Tee Shirt')}.to_not raise_error

end


end
