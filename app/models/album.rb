class Album < ActiveRecord::Base
  attr_accessible :collection_id, :name
  
  belongs_to :collection
end
