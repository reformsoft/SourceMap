class PendingRequestsController < ApplicationController
  before_filter :http_auth, :except => [:create, :new]
  # GET /pending_requests
  # GET /pending_requests.json
  def index
    @pending_requests = PendingRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pending_requests }
    end
  end

  # GET /pending_requests/1
  # GET /pending_requests/1.json
  def show
    @pending_request = PendingRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pending_request }
    end
  end

  # GET /pending_requests/new
  # GET /pending_requests/new.json
  def new
    @pending_request = PendingRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pending_request }
    end
  end

  # GET /pending_requests/1/edit
  def edit
    @pending_request = PendingRequest.find(params[:id])
  end

  # POST /pending_requests
  # POST /pending_requests.json
  def create
    @pending_request = PendingRequest.new(params[:pending_request])

    respond_to do |format|
      if @pending_request.save
        format.html { redirect_to home_url, notice: 'Pending request was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render action: "new" }
        format.json { render json: @pending_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pending_requests/1
  # PUT /pending_requests/1.json
  def update
    @pending_request = PendingRequest.find(params[:id])

    respond_to do |format|
      if @pending_request.update_attributes(params[:pending_request])
        format.html { redirect_to @pending_request, notice: 'Pending request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pending_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pending_requests/1
  # DELETE /pending_requests/1.json
  def destroy
    @pending_request = PendingRequest.find(params[:id])
    @pending_request.destroy

    respond_to do |format|
      format.html { redirect_to pending_requests_url }
      format.json { head :no_content }
    end
  end
end
