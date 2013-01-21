class Service < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :category
  attr_accessible :description, :name
end
