require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :id => 1,
        :kind => "photo",
        :description => "MyText",
        :year => "1999",
        :month => 2,
        :day => 3,
        :credit => "Credit",
        :album_id => 4
      ),
      stub_model(Item,
        :id => 1,
        :kind => "photo",
        :description => "MyText",
        :year => "1999",
        :month => 2,
        :day => 3,
        :credit => "Credit",
        :album_id => 4
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "photo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "1999".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Credit".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
