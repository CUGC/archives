class Item < ActiveRecord::Base
  attr_accessible :album_id, :credit, :day, :description, :id, :month, :kind, :year, :user_id
  
  belongs_to :album
  belongs_to :user
  
  KINDS = %w[photo video audio document]
  DEFAULT_KIND = "document"
  
end
