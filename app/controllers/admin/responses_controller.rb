class Admin::ResponsesController < ApplicationController
  before_filter :authenticate_admin!

  # GET /admin/responses
  # GET /admin/responses.json
  def index
    @responses = Admin::Response.order('created_at desc').paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @responses }
    end
  end

  # GET /admin/responses/1
  # GET /admin/responses/1.json
  def show
    @response = Admin::Response.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @response }
    end
  end

  # GET /admin/responses/new
  # GET /admin/responses/new.json
  def new
    @response = Admin::Response.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @response }
    end
  end

  # GET /admin/responses/1/edit
  def edit
    @response = Admin::Response.find(params[:id])
  end

  # POST /admin/responses
  # POST /admin/responses.json
  def create
    @response = Admin::Response.new(params[:admin_response])

    respond_to do |format|
      if @response.save
        format.html { redirect_to @response, notice: 'Response was successfully created.' }
        format.json { render json: @response, status: :created, location: @response }
      else
        format.html { render action: "new" }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/responses/1
  # PUT /admin/responses/1.json
  def update
    @response = Admin::Response.find(params[:id])

    respond_to do |format|
      if @response.update_attributes(params[:admin_response])
        format.html { redirect_to @response, notice: 'Response was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/responses/1
  # DELETE /admin/responses/1.json
  def destroy
    @response = Admin::Response.find(params[:id])
    @response.destroy

    respond_to do |format|
      format.html { redirect_to admin_responses_url }
      format.json { head :no_content }
    end
  end
end
