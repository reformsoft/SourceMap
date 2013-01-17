class Location < ActiveRecord::Base
  attr_accessible :lat, :lng
  has_many :services
end
