class Service < ActiveRecord::Base
  belongs_to :location
  attr_accessible :description, :name
end
