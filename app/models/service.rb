class Service < ActiveRecord::Base
  belongs_to :location
  has_and_belongs_to_many :tags
  attr_accessible :description, :name
end
