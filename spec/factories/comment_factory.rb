require 'spec_helper'

FactoryGirl.define do
  factory :comment do
    content 'SAMPLE CONTENT'
    user_id 1
    item_id 2
  end
end
