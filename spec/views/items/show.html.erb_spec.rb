require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :id => 1,
      :type => "",
      :description => "MyText",
      :year => "",
      :month => 2,
      :day => 3,
      :credit => "Credit",
      :album_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Credit/)
    rendered.should match(/4/)
  end
end
