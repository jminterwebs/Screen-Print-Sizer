require 'rails_helper'

RSpec.describe "Garments", type: :request do
  #init some test data
  let!(:garments){create_list(:garment, 10)}
  let(:garment_id) { garments.first.id }

  describe "GET /garments" do
    before { get '/garments'}

    it "returns garments" do
      expect(json).to_not be_empty
      expect(json.size).to eq(10)
    end
  end

  describe "Get /garments/:id" do
    before { get "/garments/#{garment_id}"}
    it "returns one garment" do
     expect(json).to_not be_empty
     expect(json['id']).to eq(garment_id)
   end
  end
end
