require 'rails_helper'

describe Location, type: :model do
  subject { described_class.new(location_code: "FC", name: "Full Chest")}

  it 'should be valid with valid attirubute' do
    expect(subject).to be_valid
  end

  it 'should not be valid without a location_code' do
    subject.location_code = nil
    expect(subject).to_not be_valid
  end

  it 'should not be valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

end
