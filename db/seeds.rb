require "open-uri"
# Booking.destroy.all
PieceOfArt.destroy_all
User.destroy_all
# => Create 10 users
puts 'Creating 10 fake users...'
10.times do
User.create!(email: Faker::Internet.email, password: '123456')
end
puts 'Creating 10 fake Piece Of Art...'
10.times do
  file = URI.open('https://source.unsplash.com/1600x900/?painting')
  piece_of_art = PieceOfArt.create!(
    name: Faker::Book.title,
    description: Faker::Lorem.sentences,
    category: ['painting', 'sculpture', 'photos'].sample,
    daily_price: Faker::Commerce.price,
    artist_name: Faker::Artist.name,
    user: User.all.sample
    )
  piece_of_art.photo.attach(io: file, filename: "blabla", content_type: 'image/png')
  piece_of_art.save
end
