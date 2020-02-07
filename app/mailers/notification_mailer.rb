class NotificationMailer < ApplicationMailer
  def notify_subscriber user_id, show_id
    @show = Tvshow.find_by(id: show_id)
    @user = User.find_by(id: user_id)
    receiver_mail = @user.email
    mail(to: receiver_mail, subject: "Upcoming Tv SHow in next 30 minutes #{ @show.name }", from: 'admin@alert-me.co', from_name: 'Alert Me Admin')
  end
end