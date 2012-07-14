class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :role, :password, :password_confirmation
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable
   
  has_many :items
  has_many :albums
  has_many :collections
  
  ROLES = %w[admin moderator member]
  
end
