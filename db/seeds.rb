# Destroy database

Motel.destroy_all
Room.destroy_all
User.destroy_all

# Create Motels and Users

response = RestClient.get "https://luvotels-hiring-api.herokuapp.com/motels.json"
motels = JSON.parse(response)

motels.each do |motel|
  pw = "luvcode6"
  user = User.create(
    email: Faker::Internet.email,
    password: pw,
    password_confirmation: pw
    )

  m = Motel.new(name: motel["name"], logo: motel["logo"], user_id: user.id)
  m.id = motel["id"]
  m.save!
  
  # Create Rooms

  response = RestClient.get "https://luvotels-hiring-api.herokuapp.com/motels/#{motel["id"]}/rooms.json"
  rooms = JSON.parse(response)

  rooms.each do |room|
    r = Room.new(motel_id: room["motel_id"], name: room["name"], picture: room["picture"])
    r.id = room["id"]
    r.save!
  end

end

