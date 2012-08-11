require 'spec_helper'

describe "admin/responses/index" do
  before(:each) do
    assign(:admin_responses, [
      stub_model(Admin::Response,
        :name => "Name",
        :guests => "Guests",
        :suggested_song => "Suggested Song",
        :attending => "Attending"
      ),
      stub_model(Admin::Response,
        :name => "Name",
        :guests => "Guests",
        :suggested_song => "Suggested Song",
        :attending => "Attending"
      )
    ])
  end

  it "renders a list of admin/responses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Guests".to_s, :count => 2
    assert_select "tr>td", :text => "Suggested Song".to_s, :count => 2
    assert_select "tr>td", :text => "Attending".to_s, :count => 2
  end
end
