User.create!([
  {email: "hari@test.com", encrypted_password: "$2a$11$QHcuRGqLzlPqR87RFWEZwe8gC1nso9s.Sw1BR9Yo0OYwQ3YE7ytvm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Channel.create!([
  {name: "Star Soprts"},
])
Tvshow.create!([
  {name: "Ind Vs AUS Live Match", telecast_time: "2020-01-30 12:56:34", channel_id: 1},
  {name: "Ind Vs NZ Live Match", telecast_time: "2020-01-30 15:58:46", channel_id: 1},
  {name: "Ind Vs PAK Live Match", telecast_time: "2020-01-30 18:59:00", channel_id: 1}
])
Favourite.create!([
  {user_id: 1, channel_id: 1, tvshow_id: 1}
])
