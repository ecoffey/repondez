class ResponsesController < ApplicationController
  def new

  end

  def update
    @invite = Invite.find_by_passphrase(params[:passphrase])

    if @invite.nil?
      flash[:error] = "Could not find that invite"
      render :action => 'new'
    end

    @invite.respond(params[:guests])

    if @invite.save
      redirect_to thank_you_path
    else
      render :action => 'new'
    end
  end
end
