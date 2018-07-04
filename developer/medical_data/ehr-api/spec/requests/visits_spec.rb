require 'rails_helper'

RSpec.describe 'Visits API' do
  # Initialize the test data
  let!(:patient) { create(:patient) }
  let!(:visits) { create_list(:visit, 20, patient_id: patient.id) }
  let(:patient_id) { patient.id }
  let(:id) { visits.first.id }

  # Test suite for GET /patients/:patient_id/visits
  describe 'GET /patients/:patient_id/visits' do
    before { get "/patients/#{patient_id}/visits" }

    context 'when patient exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all patient visits' do
        expect(json.size).to eq(20)
      end
    end

    context 'when patient does not exist' do
      let(:patient_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Patient/)
      end
    end
  end

  # Test suite for GET /patients/:patient_id/visits/:id
  describe 'GET /patients/:patient_id/visits/:id' do
    before { get "/patients/#{patient_id}/visits/#{id}" }

    context 'when patient visit exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the visit' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when patient visit does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Visit/)
      end
    end
  end

  # Test suite for PUT /patients/:patient_id/visits
  describe 'POST /patients/:patient_id/visits' do
    let(:valid_attributes) { { date: '19950815', done: false } }

    context 'when request attributes are valid' do
      before { post "/patients/#{patient_id}/visits", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/patients/#{patient_id}/visits", params: {} }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match(/Validation failed: Date can't be blank/)
      end
    end
  end

  # Test suite for PUT /patients/:patient_id/visits/:id
  describe 'PUT /patients/:patient_id/visits/:id' do
    let(:valid_attributes) { { date: 19930106 } }

    before { put "/patients/#{patient_id}/visits/#{id}", params: valid_attributes }

    context 'when visit exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end

      it 'updates the visit' do
        updated_visit = Visit.find(id)
        expect(updated_visit.date).to match(19930106)
      end
    end

    context 'when the visit does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Visit/)
      end
    end
  end

  # Test suite for DELETE /patients/:id
  describe 'DELETE /patients/:id' do
    before { delete "/patients/#{patient_id}/visits/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
