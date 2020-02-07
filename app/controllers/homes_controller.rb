class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @fav_shows = current_user.tvshows
    @tv_shows = Tvshow.all
  end
end
