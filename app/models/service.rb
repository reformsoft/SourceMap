class Service < ActiveRecord::Base
	has_many :tags
	#attr_accessible :lat, :lng
	
	#def initialize
	#	super
	#end

	def self.init_with_attributes(lat_lng, service_tags = {})
		serv = Service.new
		serv.lat = lat_lng[:lat]
		serv.lng = lat_lng[:lng]

		serv.tags = Array.new

		serv.tags.each do |name, value|
      #send("#{name}=", value)
      serv.tags << Tag.new(name, value)
  end

  return serv
end
end
