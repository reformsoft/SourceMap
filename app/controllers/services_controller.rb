class ServicesController < ApplicationController

  # GET /services
  # GET /services.json
  def index
    if (params[:category])
      category = Category.find_by_name(params[:category])
      raw_services = Service.where("category_id = ?", category.id)
    #else
    #  raw_services = Service.all
  end
  if (raw_services)
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
