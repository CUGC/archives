require 'spec_helper'

FactoryGirl.define do
  factory :album do
    name 'Album Name'
    collection_id 2
    user_id 1
  end
end
