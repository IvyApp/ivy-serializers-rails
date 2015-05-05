require 'spec_helper'

RSpec.describe PostsController, :type => :controller do
  fixtures :comments, :posts

  describe 'on GET to #index' do
    before do
      get :index
    end

    specify { expect(response).to have_http_status(:success) }

    it 'renders a collection of post resources in the AMS format' do
      expect(response.body).to match_json_schema(:ams_posts)
    end
  end

  describe 'on GET to #index_json_api' do
    before do
      get :index_json_api
    end

    specify { expect(response).to have_http_status(:success) }

    it 'renders a collection of post resources in the JSON-API format' do
      expect(response.body).to match_json_schema(:json_api_posts)
    end
  end

  describe 'on GET to #show' do
    before do
      get :show, :id => posts(:rails_is_omakase)
    end

    specify { expect(response).to have_http_status(:success) }

    it 'renders an individual post resource in the AMS format' do
      expect(response.body).to match_json_schema(:ams_post)
    end
  end

  describe 'on GET to #show_json_api' do
    before do
      get :show_json_api, :id => posts(:rails_is_omakase)
    end

    specify { expect(response).to have_http_status(:success) }

    it 'renders an individual post resource in the JSON-API format' do
      expect(response.body).to match_json_schema(:json_api_post)
    end
  end
end
