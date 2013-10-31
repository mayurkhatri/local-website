class Contact < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone_number, :email, :category
  has_many :user_contacts
  has_many :users, :through => :user_contacts
  belongs_to :location
end
