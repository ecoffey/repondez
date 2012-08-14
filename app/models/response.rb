class Response < ActiveRecord::Base
  attr_accessible :attending, :guests, :name, :suggested_song

  validates :attending, :presence => true
  validates :name, :presence => true
  validates :guests, :presence => true, :if => :attending
end
