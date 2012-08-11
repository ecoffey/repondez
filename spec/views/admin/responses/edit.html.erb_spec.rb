require 'spec_helper'

describe "admin/responses/edit" do
  before(:each) do
    @admin_response = assign(:admin_response, stub_model(Admin::Response,
      :name => "MyString",
      :guests => "MyString",
      :suggested_song => "MyString",
      :attending => "MyString"
    ))
  end

  it "renders the edit admin_response form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_responses_path(@admin_response), :method => "post" do
      assert_select "input#admin_response_name", :name => "admin_response[name]"
      assert_select "input#admin_response_guests", :name => "admin_response[guests]"
      assert_select "input#admin_response_suggested_song", :name => "admin_response[suggested_song]"
      assert_select "input#admin_response_attending", :name => "admin_response[attending]"
    end
  end
end
