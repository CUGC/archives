class Comment < ActiveRecord::Base
  attr_accessible :content, :id, :item_id, :user_id
  
  belongs_to :item
  belongs_to :user
end
