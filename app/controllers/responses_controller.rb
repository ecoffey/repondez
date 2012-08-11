class ResponsesController < ApplicationController
  def new

  end

  def update
    @invite = Invite.find_by_invite_name params[:name]

    if @invite.nil?
      flash[:error] = "Could not find that invite"
      render :action => 'new'
    end

    @invite.guests = params[:guests]
    @invite.suggested_song = params[:suggested_song]

    if @invite.respond_back
      redirect_to thank_you_path
    else
      render :action => 'new'
    end
  end
end
