require 'rails_helper'

RSpec.describe "Garments", type: :request do

  #init some test data
  let!(:garments){create_list(:garment, 10)}
  let(:garment_id) { garments.first.id }

  #GET tests for /garments
  describe "GET /garments" do
    before { get '/garments'}
      it "returns garments" do
        expect(json).to_not be_empty
        expect(json.size).to eq(10)
      end

      it 'returns a 200 status code' do
        expect(response).to have_http_status(200)
      end
  end

  #GET tests for /garments/:id
  describe "GET /garments/:id" do
    before { get "/garments/#{garment_id}"}

    context "when Record exists" do
      it "returns one garment" do
        expect(json).to_not be_empty
        expect(json['id']).to eq(garment_id)
      end

      it 'returns a 200 status code' do
        expect(response).to have_http_status(200)
      end
    end

    context "when record does not exists" do
      let(:garment_id) {100}

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Garment/)
      end
    end
  end

  #POST tests for /garments
  describe 'POST /garments' do
    let(:valid_attributes) {{name: 'Hoodie', style_code: '135'}}

    context 'when the request is valid' do
      before {post '/garments', params: valid_attributes}

      it 'creates a garment' do
        expect(json['name']).to eq("Hoodie")
        expect(json['style_code']).to eq('135')
      end

      it 'returns  status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when request is invalid' do
      before {post '/garments', params: {name: 'invalid tee'}}

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation faliure message' do
        expect(response.body).to match(/Validation failed: Style code can't be blank/)
      end
    end
  end

  #PUT test for for /garments/:id
  describe 'PUT /gatments/:id' do
    let(:valid_attributes) {{name: 'Crazy Tee'}}

    context 'when the record exists' do
      before {put "/garments/#{garment_id}", params: valid_attributes}

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  #DELETE test for /garments/:id
  describe 'DELETE /garments/:id' do
    before {delete "/garments/#{garment_id}"}

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end

  end


end
