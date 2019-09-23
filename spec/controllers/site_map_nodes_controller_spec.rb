require 'rails_helper'

RSpec.describe SiteMapNodesController, type: :controller do
  before do
    create(:site_map_node)
  end

  describe "GET index" do
    it "renders the index" do
      get :index
      expect(response).to render_template("index")
    end

    it "it renders json " do
      get :index, format: :json
      expect(response.body).to eq(SiteMapNode.arrange_serializable.to_json)
    end
  end
end
