class Category < ActiveRecord::Base
  attr_accessible :name, :template
  has_many :services
  validates :name, :uniqueness => true
end
