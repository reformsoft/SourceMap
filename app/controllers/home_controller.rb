class HomeController < ApplicationController
	def index
		raw_services = Array.new

		if (params[:term])
			q = "%#{params[:term]}%"
			matching_tags = Tag.where("value LIKE ?", q)
      raw_services = tags_to_unique_service_array(matching_tags)
    end

    if (params[:id])
      raw_services << Service.find_by_id(params[:id])
    end

    if (params[:name])
      q = "%#{params[:name]}%"
      matching_tags = Tag.where("name LIKE 'Name' AND value LIKE ?", q)
      raw_services = tags_to_unique_service_array(matching_tags)
    end

    @services = services_to_json_friendly(raw_services)

    advert_tags = Tag.where("name LIKE 'Advert' AND value LIKE ?", true)
    @adverts = tags_to_unique_service_array(advert_tags)
    #  Randomly select 4 adverts to show
    @adverts = @adverts.sample(1)

    respond_to do |format|
     format.html { render :layout => 'google_maps'}
     format.json { render json: @services }
   end
 end

 def contact
   
 end
 
 def more
   respond_to do |format|
     format.html { render :layout => nil }
   end
 end

 def show
   @service = Service.find(params[:id])

   respond_to do |format|
    format.html  { render :layout => false }
    format.json { render json: @service }
  end
end

private

def tags_to_unique_service_array(tags)
  uniq_services = Array.new
  tags.each do |m| 
    uniq_services << m.service 
  end
  uniq_services.uniq
end

def services_to_json_friendly(from_services)
  services = Array.new
  
  from_services.each do |s|
   service_with_data = Hash.new

   service_with_data[:id] = s.id
   service_with_data[:lat] = s.lat
   service_with_data[:lng] = s.lng

   s.tags.each do |t|
    service_with_data[t.name.downcase] = t.value
  end

  services << service_with_data 
end
return services
end

end
