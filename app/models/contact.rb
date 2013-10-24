class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
  	has_many :user_contacts
	has_many :users, :through => :user_contacts
	belongs_to :location
end
