class PendingRequest < ActiveRecord::Base
  attr_accessible :address, :description, :email, :lat, :lng, :name, :phone, :tags
end
