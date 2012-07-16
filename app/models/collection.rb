class Collection < ActiveRecord::Base
  attr_accessible :city, :collection_id, :contact_person, :country, :is_event, :name, :state, :venue, :when, :user_id
  
  belongs_to :collection
  has_many :collections
  has_many :albums
  
  acts_as_tree
  
  validates_presence_of :name
  validates_length_of :contact_person, :maximum => 255, :message => "255 characters max, please."
  validates_presence_of :when, :city, :state, :country, :if => Proc.new { |collection| collection.is_event }
  
  def self.collections_for_select
    collections = Collection.all
    collections.unshift Collection.new({:id => 0, :name => "None"})
  end
  
  def formatted_location
    location = [self.city, self.state, self.country]
    location.reject! { |piece| piece.nil? || piece.blank? }
    municipalities = location.join(", ")
    
    municipalities = "At #{self.venue} in #{municipalities}" unless self.venue || self.venue.nil? || self.venue.blank?
    municipalities = "In #{municipalities}" if (self.venue.nil? || self.venue.blank?) && !municipalities.empty?
    
    municipalities
  end
  
  def self.all_root_collections
    self.where( :collection_id => nil )
  end
  
end
