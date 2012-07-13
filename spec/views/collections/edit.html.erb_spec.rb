require 'spec_helper'

describe "collections/edit" do
  before(:each) do
    @collection = assign(:collection, stub_model(Collection,
      :name => "MyString",
      :contact_person => "MyString",
      :when => "MyString",
      :venue => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :collection_id => 1,
      :is_event => false
    ))
  end

  it "renders the edit collection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => collections_path(@collection), :method => "post" do
      assert_select "input#collection_name", :name => "collection[name]"
      assert_select "input#collection_contact_person", :name => "collection[contact_person]"
      assert_select "input#collection_when", :name => "collection[when]"
      assert_select "input#collection_venue", :name => "collection[venue]"
      assert_select "input#collection_city", :name => "collection[city]"
      assert_select "input#collection_state", :name => "collection[state]"
      assert_select "input#collection_country", :name => "collection[country]"
      assert_select "input#collection_collection_id", :name => "collection[collection_id]"
      assert_select "input#collection_is_event", :name => "collection[is_event]"
    end
  end
end
