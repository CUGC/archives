require 'spec_helper'

FactoryGirl.define do
  factory :collection do
    name 'Collection Name'
    user_id 1
    
    factory :child_collection do
      collection_id 1
    end
    
    factory :event do
      collection_id 1
    end
  end
end
