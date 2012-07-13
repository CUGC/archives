class Collection < ActiveRecord::Base
  attr_accessible :city, :collection_id, :contact_person, :country, :is_event, :name, :state, :venue, :when
  
  has_many :collections
  has_many :albums
  
  acts_as_tree
  
  validates_presence_of :name
  validates_presence_of :when, :city, :state, :country, :if => Proc.new { |collection| collection.is_event }
  
  def self.collections_for_select
    collections = Collection.all
    collections.unshift Collection.new({:id => 0, :name => "None"})
  end
  
end
