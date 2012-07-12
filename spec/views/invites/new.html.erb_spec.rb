require 'spec_helper'

describe "invites/new" do
  before(:each) do
    assign(:invite, stub_model(Invite,
      :name => "MyString",
      :address => "MyText",
      :passphrase => "MyString",
      :sent => false,
      :responded => false,
      :guests => 1,
      :tier => 1
    ).as_new_record)
  end

  it "renders new invite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invites_path, :method => "post" do
      assert_select "input#invite_name", :name => "invite[name]"
      assert_select "textarea#invite_address", :name => "invite[address]"
      assert_select "input#invite_passphrase", :name => "invite[passphrase]"
      assert_select "input#invite_sent", :name => "invite[sent]"
      assert_select "input#invite_responded", :name => "invite[responded]"
      assert_select "input#invite_guests", :name => "invite[guests]"
      assert_select "input#invite_tier", :name => "invite[tier]"
    end
  end
end
