module ApplicationHelper
  def favourite_show? show
    current_user.tvshows.include?(show)
  end
end
