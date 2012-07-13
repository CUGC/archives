require 'spec_helper'

describe "albums/new" do
  before(:each) do
    assign(:album, stub_model(Album,
      :name => "MyString",
      :collection_id => 1
    ).as_new_record)
  end

  it "renders new album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => albums_path, :method => "post" do
      assert_select "input#album_name", :name => "album[name]"
      assert_select "input#album_collection_id", :name => "album[collection_id]"
    end
  end
end
