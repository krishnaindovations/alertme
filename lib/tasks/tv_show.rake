namespace :tvshow do
  task upcoming: :environment do
    tvshows = Tvshow.upcoming(30.minutes)
    tvshows.each do |tvshow|
    	tvshow.notify_subscriber
    end
  end
end
