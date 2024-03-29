require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :email => "Email",
      :name => "Name",
      :message => "MyText",
      :subject => "Subject"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Subject/)
  end
end
