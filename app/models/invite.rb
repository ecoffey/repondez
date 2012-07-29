class Invite < ActiveRecord::Base
  attr_accessible :address, :guests, :name, :passphrase, :responded, :sent, :tier

  has_paper_trail

  def respond(guests)
    unless self.sent
      errors.add :base, 'Invite not sent yet'
    end

    self.responded = true
    self.guests = guests
  end
end
