class Invite < ActiveRecord::Base
  attr_accessible :address, :guests, :name, :passphrase, :responded, :sent, :tier
end
