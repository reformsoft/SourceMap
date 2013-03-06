class Tag < ActiveRecord::Base
  attr_accessible :name, :value
  belongs_to :service
end