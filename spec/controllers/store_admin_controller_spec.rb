require 'rails_helper'

RSpec.describe StoreAdminController, type: :controller do
  render_views

  describe "GET home" do
    it "renders the home template" do
      get :home
      expect(response).to render_template("home")
      expect(response).to render_template("layouts/admin")
      expect(response.body).to match /Welcome FlatIron Admin/im
      expect(response.body).to match /Flatiron Widgets: Admin/im
    end
  end
end
