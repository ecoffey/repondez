class InvitesController < ApplicationController
  before_filter :authenticate_admin!

  def bulk_send_invites
    @invites = Invite.find(params[:invite_ids])

    @invites.each do |invite|
      invite.send_to
    end

    redirect_to invites_path
  end

  # GET /invites
  # GET /invites.json
  def index
    @invites = Invite.order(:tier, :state, :name).paginate(:page => params[:page], :per_page => 20)

    puts @invites.inspect

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invites }
    end
  end

  # GET /invites/1
  # GET /invites/1.json
  def show
    @invite = Invite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invite }
    end
  end

  # GET /invites/new
  # GET /invites/new.json
  def new
    @invite = Invite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invite }
    end
  end

  # GET /invites/1/edit
  def edit
    @invite = Invite.find(params[:id])
  end

  # POST /invites
  # POST /invites.json
  def create
    @invite = Invite.new(params[:invite])

    respond_to do |format|
      if @invite.save
        format.html { redirect_to @invite, notice: 'Invite was successfully created.' }
        format.json { render json: @invite, status: :created, location: @invite }
      else
        format.html { render action: "new" }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invites/1
  # PUT /invites/1.json
  def update
    @invite = Invite.find(params[:id])

    respond_to do |format|
      if @invite.update_attributes(params[:invite])
        format.html { redirect_to @invite, notice: 'Invite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invites/1
  # DELETE /invites/1.json
  def destroy
    @invite = Invite.find(params[:id])
    @invite.destroy

    respond_to do |format|
      format.html { redirect_to invites_url }
      format.json { head :no_content }
    end
  end
end
