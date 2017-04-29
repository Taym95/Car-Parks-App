# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'geokit'

json = ActiveSupport::JSON.decode(File.read('db/parkings_input.json'))




json.each do |a|
  r = Random.new.rand(1..100).to_s

  location =Geokit::Geocoders::GoogleGeocoder.geocode a['address']

  if a['city']=='Paris'
    Park.create(name: a['name'], address: a['address'], slug: a['name'].downcase, city: a['city'], available: a['available'], has_camera: a['has_camera'], has_watchman: a['has_watchman'], zip_code: a['zip_code'], district: r, price_month: a['price_month'], main_picture: a['main_picture'], lat: location.lat, lng: location.lng)
  else
    Park.create(name: a['name'], address: a['address'], slug: a['name'].downcase, city: a['city'], available: a['available'], has_camera: a['has_camera'], has_watchman: a['has_watchman'], zip_code: a['zip_code'], district: "0", price_month: a['price_month'], main_picture: a['main_picture'], lat: location.lat, lng: location.lng)
  end


end