require 'spec_helper'

describe "responses/edit" do
  before(:each) do
    @response = assign(:response, stub_model(Response,
      :name => "MyString",
      :guests => 1,
      :suggested_song => "MyText",
      :attending => false
    ))
  end

  it "renders the edit response form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => responses_path(@response), :method => "post" do
      assert_select "input#response_name", :name => "response[name]"
      assert_select "input#response_guests", :name => "response[guests]"
      assert_select "textarea#response_suggested_song", :name => "response[suggested_song]"
      assert_select "input#response_attending", :name => "response[attending]"
    end
  end
end
