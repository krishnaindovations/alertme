class TvshowsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tvshow
  before_action :check_if_already_in_favourite_list?, only: :mark_favourite
  after_action :get_list

  def mark_favourite
    Favourite.create(user_id: current_user.id, channel_id: @tvshow.channel_id, tvshow_id: @tvshow.id )
  end

  def unmark_favourite
    fav_rec = @tvshow.subscribers.find_by(user_id: current_user.id)
    fav_rec&.delete
  end

  private
    def set_tvshow
      @tvshow = Tvshow.find_by(id: params[:id])
    end

    def check_if_already_in_favourite_list?
      @tvshow.subscribers.include?(current_user)
    end

    def get_list
      @fav_shows = current_user.tvshows
      @tv_shows = Tvshow.all
    end
end
