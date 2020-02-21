require "open-uri"
# Booking.destroy.all
#PieceOfArt.destroy_all
#User.destroy_all
# => Create 10 users

  10.times do
    random_number = rand(2000..4000)
    url = "https://collectionapi.metmuseum.org/public/collection/v1/objects/#{random_number}"
    response = open(url).read
    data = JSON.parse(response)


    p data["title"]
    p data["medium"]
    p data["objectName"]
    p data["artistDisplayName"]
    p data["primaryImage"]
    poa_api_id =[]
    poa_api_id << data["objectID"]

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
