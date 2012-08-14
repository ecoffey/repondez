class HomeController < ApplicationController
  layout "rsvp"

  def index
    @active_nav = :home
  end

  def thank_you
    @active_nav = :thank_you
  end

  def registry
    @active_nav = :registry
  end

  def where_to_stay
    @active_nav = :where_to_stay
  end

  def how_to_get_here
    @active_nav = :how_to_get_here
  end
end
