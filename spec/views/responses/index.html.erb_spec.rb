require 'spec_helper'

describe "responses/index" do
  before(:each) do
    assign(:responses, [
      stub_model(Response,
        :name => "Name",
        :guests => 1,
        :suggested_song => "MyText",
        :attending => false
      ),
      stub_model(Response,
        :name => "Name",
        :guests => 1,
        :suggested_song => "MyText",
        :attending => false
      )
    ])
  end

  it "renders a list of responses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
