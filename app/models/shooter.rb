class Shooter < ActiveRecord::Base
  validates_presence_of :address
  
  belongs_to :address
  belongs_to :second_address, class_name: 'Address', foreign_key: :second_address_id
end