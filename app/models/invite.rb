class Invite < ActiveRecord::Base
  attr_accessible :address, :guests, :name, :passphrase, :responded, :sent, :tier

  has_paper_trail

  def respond(guests)
    raise 'Invite not sent' unless self.sent

    self.responded = true
    self.guests = guests
  end
end
