require 'rails_helper'

RSpec.describe "Locations", type: :request do

  #init some test data
  let!(:locations){create_list(:location, 10)}
  let(:location_id) {locations.first.id}

  #GET tests for /Locations
  describe "GET /locations" do
    before {get '/locations'}

    it "returns locations" do
      expect(json).to_not be_empty
      expect(json.size).to eq(10)
    end

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

  end
  

end
