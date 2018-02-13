require 'rails_helper'

RSpec.describe "Garment Locations", type: :request do

  let!(:location) {create(:location, :with_garment)}
  let(:garment_id) {location.garments.first.id}
  let(:id) {location.id}


  #Tests for /garments/:garment_id/locations
  describe "GET /garments/:garment_id/locations" do
    before { get "/garments/#{garment_id}/locations"}

    context "when Locations exists" do
      it 'returns a status 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all Garment Locations' do
        expect(json.size).to eq(1)
      end
    end

    context "when Garment does not exist" do
      let(:garment_id) {0}

      it "returns a status 404" do
        expect(response).to have_http_status(404)
      end

      it "resturns a not gound messag" do
        expect(response.body).to match(/Couldn't find Garment/)
      end
    end
  end


  #Tests  for /garments/:garment_id/locations
  describe "Get /garments/:garment_id/locations/:id" do
    before { get "/garments/#{garment_id}/locations/#{id}"}


    context "When Location exists" do
      it 'returns a status 200' do
        expect(response).to have_http_status(200)
      end

      it 'retruns the location id' do
        expect(json['id']).to eq(id)
      end
    end

    context "When Location does not exist" do
      let(:id) { 0 }

      it "returns  status 404" do
        expect(response).to have_http_status(404)
      end

      it "returns a message" do
        expect(response.body).to match(/Couldn't find Location/)
      end
    end
  end

  #Tests for PUT /garments/:garment_id/locations/:id
  describe "PUT /garments/:garment_id/locations/:id" do
    let(:valid_attributes) {{name: "FULL BACK"}}
    before { put "/garments/#{garment_id}/locations/#{id}", params: valid_attributes}

    context "when location exists" do

      it "returns status 200" do
          expect(response).to have_http_status(204)
      end

      it 'updates the location' do
        updated_location = Location.find(id)
        expect(updated_location.name).to match(/FULL BACK/)
      end

    end


  end


end
