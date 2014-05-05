class Address < ActiveRecord::Base
  validates_presence_of :city, :building, :zip_code

  validates_format_of :zip_code, with: /\A\d\d\-\d\d\d\z/
  validates_format_of :building, with: /\A\d+.?\z/

  has_one :shooter
end
