class HomeController < ApplicationController
	def index
		raw_services = Array.new

		if (params[:term])
			q = "%#{params[:term]}%"
			matching_tags = Tag.where("value LIKE ?", q)

      # Must be a better ruby way to do the following...    
      matching_tags.each do |m| 
      	raw_services << m.service 
      end
      raw_services.uniq!
  end

  puts raw_services

  @services = Array.new
  raw_services.each do |s|
  	service_with_data = Hash.new

  	service_with_data[:id] = s.id
  	service_with_data[:lat] = s.lat
  	service_with_data[:lng] = s.lng

  	s.tags.each do |t|
  		service_with_data[t.name.downcase] = t.value
  	end

  	@services << service_with_data 
  end

  respond_to do |format|
  	format.html
  	format.json { render json: @services }
  end
end

def show
	@service = Service.find(params[:id])

	respond_to do |format|
		format.html  { render :layout => false }
		format.json { render json: @service }
	end
end
end
