require "spec_helper"

describe Admin::ResponsesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/responses").should route_to("admin/responses#index")
    end

    it "routes to #new" do
      get("/admin/responses/new").should route_to("admin/responses#new")
    end

    it "routes to #show" do
      get("/admin/responses/1").should route_to("admin/responses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/responses/1/edit").should route_to("admin/responses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/responses").should route_to("admin/responses#create")
    end

    it "routes to #update" do
      put("/admin/responses/1").should route_to("admin/responses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/responses/1").should route_to("admin/responses#destroy", :id => "1")
    end

  end
end
