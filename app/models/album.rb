class Album < ActiveRecord::Base
  attr_accessible :collection_id, :name, :user_id
  
  belongs_to :collection
end
