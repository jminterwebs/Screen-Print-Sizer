require 'rails_helper'

describe Garment, type: :model do

    subject {
      described_class.new(style_code: "207", name: "Classic Tee Shirt")
    }


describe 'Assications' do
  it {should have_many(:locations).through(:garmentsLocation)}
end

describe "Validations" do
  it 'should be valid with valid attirubutes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should not be valid without a style_code' do
    subject.style_code = nil
    expect(subject).to_not be_valid
  end
end


end
