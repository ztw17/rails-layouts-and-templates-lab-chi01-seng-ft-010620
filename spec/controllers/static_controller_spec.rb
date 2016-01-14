require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  render_views

  describe "GET home" do
    it "renders the home template with the default layout" do
      get :home
      expect(response).to render_template("home")
      expect(response).to render_template("layouts/application")

      assert_select "h1", "Flatiron Widgets Store"
      assert_select "h2", "Welcome to Flatiron Widgets"
    end
  end
end
