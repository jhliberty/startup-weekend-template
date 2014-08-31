require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :email => "Email",
        :name => "Name",
        :message => "MyText",
        :subject => "Subject"
      ),
      stub_model(Contact,
        :email => "Email",
        :name => "Name",
        :message => "MyText",
        :subject => "Subject"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
  end
end
