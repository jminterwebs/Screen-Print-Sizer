require 'rails_helper'

describe Dimension, type: :model do
  subject { described_class.new(width: 12, height: 12)}

  it "should have valid attirubutes" do
    expect(subject).to be_valid
  end

  it 'should not be valid without a height' do
    subject.height = nil
    expect(subject).to_not be_valid
  end

  it 'should not be valid without a width' do
    subject.width = nil
    expect(subject).to_not be_valid
  end

end
