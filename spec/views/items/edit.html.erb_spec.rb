require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :id => 1,
      :kind => "",
      :description => "MyText",
      :year => "",
      :month => 1,
      :day => 1,
      :credit => "MyString",
      :album_id => 1
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_kind", :name => "item[kind]"
      assert_select "textarea#item_description", :name => "item[description]"
      assert_select "input#item_year", :name => "item[year]"
      assert_select "input#item_month", :name => "item[month]"
      assert_select "input#item_day", :name => "item[day]"
      assert_select "input#item_credit", :name => "item[credit]"
      assert_select "input#item_album_id", :name => "item[album_id]"
    end
  end
end
