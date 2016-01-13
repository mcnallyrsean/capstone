# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

client = GooglePlaces::Client.new("#{ENV['API_KEY']}")
bars = client.spots(41.966676,-87.687303, :types => 'bar')
bars.each do |bar|
  Bar.create(
    :name => bar['name'],
    :vicinity => bar['vicinity'],
    :place_id => bar['place_id'],
    :formatted_address => bar[:formatted_address],
    :formatted_phone_number => bar['formatted_phone_number'],
    :lat => bar['lat'],
    :lng => bar['lng'],
    :icon => bar['icon'],
    :rating => bar['rating'],
    :types => bar['types'],
    :url => bar['url']
  )
end