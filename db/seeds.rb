require "open-uri"
# Booking.destroy.all
Booking.destroy_all
PieceOfArt.destroy_all
User.destroy_all
# => Create 10 users
puts 'Creating 10 fake users...'

@user_1 = User.create!(email: 'user1@gmail.com', password: '123456' )
@user_2 =User.create!(email: 'user2@gmail.com', password: '123456' )

puts 'Creating 10 fake users...'
10.times do
User.create!(email: Faker::Internet.email, password: '123456')
end
# puts 'Creating 10 fake Piece Of Art...'
# 10.times do
#   file = URI.open('https://source.unsplash.com/1600x900/?painting')
#   piece_of_art = PieceOfArt.create!(
#     name: Faker::Book.title,
#     description: Faker::Lorem.sentences,
#     category: ['painting', 'sculpture', 'photos'].sample,
#     daily_price: Faker::Commerce.price,
#     artist_name: Faker::Artist.name,
#     user: User.all.sample
#     )
#   piece_of_art.photo.attach(io: file, filename: "blabla", content_type: 'image/png')
#   piece_of_art.save
# end

# Booking.destroy.all
#PieceOfArt.destroy_all
#User.destroy_all
# => Create 10 users

array_object_id = [40340,40341,40349,40353,40429,40432,44628,45608,45609,45610,45696,45697,45743,45809,48882,48889,48890,48907,48916,48918,48919,48920,48940,48985,48986,48987,49104,49105,49466,49617,49798,51529,51563,51595,51649,51756,51760,51761,51812,51814,53544,53545,53550,53583,53750,54789,54792,54794,54796,54911,54912,54913,54914,54915,54953,54967,55034,57234]
array_object_1 = [3970,11204,11854,11969,12550,12598,17207]
array_object_2 = [36034,36370,40336,40337,40338,40339]




array_object_1.each do |objectid|
    # random_number = rand(2000..4000)
    url = "https://collectionapi.metmuseum.org/public/collection/v1/objects/#{objectid}"
    response = open(url).read
    data = JSON.parse(response)
    p data["title"]
    p data["medium"]
    p data["objectName"]
    p data["artistDisplayName"]
    p data["primaryImage"]
    # poa_api_id =[]
    # poa_api_id << data["objectID"]
    piece_of_art = PieceOfArt.new(
      name: data["title"].present? ? data["title"] : "Unknown",
      description: data["medium"].present? ? data["title"] : "Unknown",
      category: data["objectName"].present? ? data["objectDate"] : "Unknown",
      daily_price: Faker::Commerce.price,
      artist_name: data["artistDisplayName"].present? ? data["artistDisplayName"] : "Artist unknown",
      user: @user_1,
      creation_date: data["objectDate"].present? ? data["objectDate"] : "Unknown"
    )
    if data["primaryImage"].present?
      file = URI.open(data["primaryImage"])
    else
      file = URI.open('https://source.unsplash.com/1600x900/?painting')
    end
    piece_of_art.photo.attach(io: file, filename: "blabla", content_type: 'image/png')
    piece_of_art.save!
  end


array_object_2.each do |objectid|
    # random_number = rand(2000..4000)
    url = "https://collectionapi.metmuseum.org/public/collection/v1/objects/#{objectid}"
    response = open(url).read
    data = JSON.parse(response)
    p data["title"]
    p data["medium"]
    p data["objectName"]
    p data["artistDisplayName"]
    p data["primaryImage"]
    # poa_api_id =[]
    # poa_api_id << data["objectID"]
    piece_of_art = PieceOfArt.new(
      name: data["title"].present? ? data["title"] : "Unknown",
      description: data["medium"].present? ? data["title"] : "Unknown",
      category: data["objectName"].present? ? data["objectDate"] : "Unknown",
      daily_price: Faker::Commerce.price,
      artist_name: data["artistDisplayName"].present? ? data["artistDisplayName"] : "Artist unknown",
      user: @user_2,
      creation_date: data["objectDate"].present? ? data["objectDate"] : "Unknown"
    )
    if data["primaryImage"].present?
      file = URI.open(data["primaryImage"])
    else
      file = URI.open('https://source.unsplash.com/1600x900/?painting')
    end
    piece_of_art.photo.attach(io: file, filename: "blabla", content_type: 'image/png')
    piece_of_art.save!
  end


# /////////////////////


  # 10.times do
  array_object_id.each do |objectid|
    # random_number = rand(2000..4000)
    url = "https://collectionapi.metmuseum.org/public/collection/v1/objects/#{objectid}"
    response = open(url).read
    data = JSON.parse(response)
    p data["title"]
    p data["medium"]
    p data["objectName"]
    p data["artistDisplayName"]
    p data["primaryImage"]
    # poa_api_id =[]
    # poa_api_id << data["objectID"]
    piece_of_art = PieceOfArt.new(
      name: data["title"].present? ? data["title"] : "Unknown",
      description: data["medium"].present? ? data["title"] : "Unknown",
      category: data["objectName"].present? ? data["objectDate"] : "Unknown",
      daily_price: Faker::Commerce.price,
      artist_name: data["artistDisplayName"].present? ? data["artistDisplayName"] : "Artist unknown",
      user: User.all.sample,
      creation_date: data["objectDate"].present? ? data["objectDate"] : "Unknown"
    )
    if data["primaryImage"].present?
      file = URI.open(data["primaryImage"])
    else
      file = URI.open('https://source.unsplash.com/1600x900/?painting')
    end
    piece_of_art.photo.attach(io: file, filename: "blabla", content_type: 'image/png')
    piece_of_art.save!
  end
