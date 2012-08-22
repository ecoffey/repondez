class Response < ActiveRecord::Base
  attr_accessible :attending, :guests, :name, :suggested_song

  validates :attending, :inclusion => { :in => [true, false] }
  validates :name, :presence => true
  validates :guests, :presence => true, :if => :attending

  def self.confirmed_guest_count
    where(attending: true).sum(:guests)
  end
end
