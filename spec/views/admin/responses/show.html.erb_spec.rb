require 'spec_helper'

describe "admin/responses/show" do
  before(:each) do
    @admin_response = assign(:admin_response, stub_model(Admin::Response,
      :name => "Name",
      :guests => "Guests",
      :suggested_song => "Suggested Song",
      :attending => "Attending"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Guests/)
    rendered.should match(/Suggested Song/)
    rendered.should match(/Attending/)
  end
end
