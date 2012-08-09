class Invite < ActiveRecord::Base
  attr_accessible :address, :guests, :name, :passphrase, :responded, :sent, :tier

  state_machine :initial => :unsent do
    event :send_to do
      transition :unsent => :sent
    end

    event :respond_to do
      transition :sent => :responded
    end
  end

  scope :sent, where(:state => "sent")

  def initialize attributes = nil, options = {}
    super attributes, options
  end
end
