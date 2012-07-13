require 'spec_helper'

describe Item do
  
  let(:item) { build :item }
  
  it "has a valid kind" do
    Item::KINDS.include?(item.kind).should be_true
  end
  
end
