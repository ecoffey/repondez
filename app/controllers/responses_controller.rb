class ResponsesController < ApplicationController
  def new

  end

  def update
    @invite = Invite.sent.where(:passphrase => params[:passphrase], :address => params[:address], :name => params[:name]).first

    if @invite.nil?
      flash[:error] = "Could not find that invite"
      render :action => 'new'
    end

    @invite.guests = params[:guests]
    @invite.respond_to!

    if @invite.save
      redirect_to thank_you_path
    else
      render :action => 'new'
    end
  end
end
