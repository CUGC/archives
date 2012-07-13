require 'spec_helper'

describe "collections/index" do
  before(:each) do
    assign(:collections, [
      stub_model(Collection,
        :name => "Name",
        :contact_person => "Contact Person",
        :when => "When",
        :venue => "Venue",
        :city => "City",
        :state => "State",
        :country => "Country",
        :collection_id => 1,
        :is_event => false
      ),
      stub_model(Collection,
        :name => "Name",
        :contact_person => "Contact Person",
        :when => "When",
        :venue => "Venue",
        :city => "City",
        :state => "State",
        :country => "Country",
        :collection_id => 1,
        :is_event => false
      )
    ])
  end

  it "renders a list of collections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Person".to_s, :count => 2
    assert_select "tr>td", :text => "When".to_s, :count => 2
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
