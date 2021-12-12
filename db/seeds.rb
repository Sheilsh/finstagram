users = [
  { username: "atlas_1", avatar_url: "/images/icon1.jpeg", email: "atlas1@hotmail.com", password: "abcd" },
  { username: "travel_lover", avatar_url: "/images/icon2.jpeg", email: "travel_l@gmail.com", password: "abcd" },
  { username: "best_vacations", avatar_url: "/images/icon3.jpeg", email: "vacation_b@gmail.com", password: "abcd" },
  { username: "hello1", avatar_url: "https://www.seekpng.com/png/detail/920-9209963_hand-painted-original-cute-avatar-png-and-psd.png", email: "hello@hotmail.com", password: "12345"},
  { username: "sheila", avatar_url: "https://previews.123rf.com/images/amosyagina/amosyagina1805/amosyagina180500032/102632429-cute-avatar-icon-with-girl.jpg", email: "sheila@hotmail.com", password: "hello"}
]

finstagram_posts = [
  { photo_url: "/images/post1-santorini.jpeg"},
  { photo_url: "/images/post1_bali.jpeg"},
  { photo_url: "public/images/thailandpost3.jpeg"},
  { photo_url: "https://www.hotelcabanastulum.com/wp-content/uploads/2017/09/The-powder-white-sand-at-BeTulum.jpg"},
  { photo_url: "https://media.giphy.com/media/5bd7bfL2WfVAwAuRHG/giphy.gif"}
]

puts "Seeding database..."

# create Users and FinstagramPosts
users.each_with_index do |user, index|
  # create new User
  user_record = User.create(user)
  # get a finstagram_post
  finstagram_post = finstagram_posts[index]
  # modify finstagram_post's user_id from created record
  finstagram_post[:user_id] = user_record.id
  # create new FinstagramPost
  FinstagramPost.create(finstagram_post)
end

puts "Seeding complete."