require 'spec_helper'

describe "invites/index" do
  before(:each) do
    assign(:invites, [
      stub_model(Invite,
        :name => "Name",
        :address => "MyText",
        :passphrase => "Passphrase",
        :sent => false,
        :responded => false,
        :guests => 1,
        :tier => 2
      ),
      stub_model(Invite,
        :name => "Name",
        :address => "MyText",
        :passphrase => "Passphrase",
        :sent => false,
        :responded => false,
        :guests => 1,
        :tier => 2
      )
    ])
  end

  it "renders a list of invites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Passphrase".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
