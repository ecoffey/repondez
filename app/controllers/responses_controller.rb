class ResponsesController < ApplicationController
  def update
    invite = Invite.find_by_passphrase(params[:passphrase])

    invite.respond(params[:guests])
    invite.save!
  end
end
