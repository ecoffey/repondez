class Invite < ActiveRecord::Base
  HONORIFIC = '((Mrs|Miss|Mister|Mis|Mr)\.?)'
  CONJUNCTION = '(&|and|,)'

  NAME_BOILERPLATE = /^#{HONORIFIC}?\s*#{CONJUNCTION}\s*#{HONORIFIC}\s*/i

  attr_accessible :address, :guests, :name, :passphrase, :responded, :sent, :tier

  state_machine :initial => :unsent do
    state :responded do
      validates :guests, :presence => true, :numericality => true
    end

    event :send_out do
      transition :unsent => :sent
    end

    event :respond_back do
      transition :sent => :responded
    end
  end

  validates :name, :presence => true, :format => /\A([A-Z]|[a-z]| )+\Z/
  validates :tier, :presence => true, :numericality => true
  validates :anticipated_guests, :presence => true, :numericality => true

  scope :sent, where(:state => "sent")

  def self.find_by_invite_name invite_name
    sent.where(:name => normalize_invite_name(invite_name))
  end

  def self.normalize_invite_name invite_name
    name = invite_name.strip
    name.gsub! NAME_BOILERPLATE, ''
    name.gsub! /#{CONJUNCTION}\s*guest/i, ''
    name.tap(&:strip!)
  end
end
