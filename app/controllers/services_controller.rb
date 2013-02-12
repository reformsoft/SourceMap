class ServicesController < ApplicationController

  # GET /services
  # GET /services.json
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

  # GET /services/1
  # GET /services/1.json
  def show
    @service = Service.find(params[:id])

    respond_to do |format|
      format.html  { render :layout => false }
      format.json { render json: @service }
    end
  end

  # GET /services/new
  # GET /services/new.json
  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service }
    end
  end

  # GET /services/1/edit
  def edit
    @service = Service.find(params[:id])
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render json: @service, status: :created, location: @service }
      else
        format.html { render action: "new" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.json
  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to services_url }
      format.json { head :no_content }
    end
  end
end
