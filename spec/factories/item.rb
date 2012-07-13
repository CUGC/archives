require 'spec_helper'

FactoryGirl.define do
  factory :item do
    kind Item::DEFAULT_KIND
    album_id 1
    user_id 1
    
    factory :photo do
      kind 'photo'
    end
    
    factory :video do
      kind 'video'
    end
    
    factory :audio do
      kind 'audio'
    end
    
    factory :document do
      kind 'document'
    end
  end
end