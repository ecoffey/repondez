class Response < ActiveRecord::Base
  attr_accessible :attending, :guests, :name, :suggested_song
end
