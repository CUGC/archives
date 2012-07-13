require 'spec_helper'

describe "collections/show" do
  before(:each) do
    @collection = assign(:collection, stub_model(Collection,
      :name => "Name",
      :contact_person => "Contact Person",
      :when => "When",
      :venue => "Venue",
      :city => "City",
      :state => "State",
      :country => "Country",
      :collection_id => 1,
      :is_event => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Contact Person/)
    rendered.should match(/When/)
    rendered.should match(/Venue/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Country/)
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
