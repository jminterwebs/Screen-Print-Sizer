require 'rails_helper'

describe Location, type: :model do
  subject { described_class.new(location_code: "FC", name: "Full Chest")}

  it "should be valid with valid attirubutes" do
    expect(subject).to be_valid
  end

end
