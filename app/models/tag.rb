class Tag < ActiveRecord::Base
  attr_accessible :name, :value
  belongs_to :service
  
  def initialize(name, value)
    self.name = name
    self.value = value
  end
end