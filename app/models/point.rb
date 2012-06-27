class Point < ActiveRecord::Base
  attr_accessible :description, :lat, :lng, :name
end
