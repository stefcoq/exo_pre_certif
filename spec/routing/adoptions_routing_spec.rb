require "rails_helper"

RSpec.describe AdoptionsController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(get: "/trees/1/adoptions/new").to route_to("adoptions#new")
    end

    it "routes to #create" do
      expect(post: "/trees").to route_to("trees#create")
    end

    it "routes to #destroy" do
      expect(delete: "/trees/1").to route_to("trees#destroy", id: "1")
    end
  end
end
