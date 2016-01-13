require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  render_views

  describe "GET home" do
    it "renders the home template" do
      get :home
      expect(response).to render_template("home")
      expect(response).to render_template("layouts/application")
      expect(response.body).to match /Welcome to FlatIron Widgets/im
      expect(response.body).to match /Flatiron Widgets Store/im
    end
  end
end
