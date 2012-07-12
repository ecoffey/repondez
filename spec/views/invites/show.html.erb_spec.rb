require 'spec_helper'

describe "invites/show" do
  before(:each) do
    @invite = assign(:invite, stub_model(Invite,
      :name => "Name",
      :address => "MyText",
      :passphrase => "Passphrase",
      :sent => false,
      :responded => false,
      :guests => 1,
      :tier => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Passphrase/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
