class ResponsesController < ApplicationController
  def new

  end

  def update
    @invite = Invite.sent.where(
        :address => params[:address],
        :name => params[:name]).first

    if @invite.nil?
      flash[:error] = "Could not find that invite"
      render :action => 'new'
    end

    @invite.guests = params[:guests]
    @invite.suggested_song = params[:suggested_song]

    if @invite.respond_to
      redirect_to thank_you_path
    else
      render :action => 'new'
    end
  end
end
