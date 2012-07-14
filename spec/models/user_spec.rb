require 'spec_helper'

describe User do
  
  describe '#name' do
    it "contains both first_name and last_name" do
      user.name.should match(user.first_name)
      user.name.should match(user.last_name)
    end
  end
  
end
