class Collection < ActiveRecord::Base
  attr_accessible :city, :collection_id, :contact_person, :country, :is_event, :name, :state, :venue, :when
  
  has_many :collections
  has_many :albums
end
