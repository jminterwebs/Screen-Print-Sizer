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

  #GET tests for /locations/:id
  describe 'GET /locations/:id' do
    before {get "/locations/#{location_id}"}

    context "when Record exists" do
      it "returns one location" do
        expect(json).to_not be_empty
        expect(json['id']).to eq(location_id)
      end

      it 'returns a 200 status code' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when record does not exists' do
      let(:location_id){100}

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Location/)
      end
    end
  end

  #POST test for /Locations
  describe "POST /locations" do
    let(:valid_attributes){{name: "Full Chest", location_code: "FC"}}

    context 'when request is valid' do
      before {post '/locations', params: valid_attributes}

      it 'creates a location' do
        expect(json['name']).to eq("Full Chest")
        expect(json['location_code']).to eq("FC")
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when request id invalid' do
      before {post '/locations', params: {name: 'invalid locations'}}

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation faliure message' do
        expect(response.body).to match(/Validation failed: Location code can't be blank/)
      end
    end
  end

  #PUT test for /locations/:id
  describe 'PUT /garments/:id' do
    let(:valid_attributes) {{name: 'Full Back'}}

    context 'when record exists' do
      before {put "/locations/#{location_id}", params: valid_attributes}

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'teturns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /locations/:id' do
    before {delete "/locations/#{location_id}"}

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end


end
