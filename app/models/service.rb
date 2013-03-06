class Service < ActiveRecord::Base
	has_many :tags, :dependent => :destroy
	attr_accessible :lat, :lng, :tags_attributes
	accepts_nested_attributes_for :tags, :reject_if => lambda { |a| a[:name].blank? || a[:value].blank? }, :allow_destroy => true
end
