# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.create!(team_name: "Hustlin' Hamdoggers", division: "Medium")
Team.create!(team_name: "Huskies", division: "Medium")
Team.create!(team_name: "Wang Chung and The All Century Booster Club", division: "Medium")

Runner.create!(first_name: "Mark", last_name: "Cassidy", predicted_pace: "8:00 min/mile",team_id: 1)
checkpoints = ["Kaiaka Bay Beach Park entrance", "Makaleha Beach Park and Polo Beach access", "Kaena Point - East", "Yokohama Beach Park", "Makaha Beach Park", "Maili Beach Park", "Kalaniana'ole Beach Park", "Railroad & Kalaeloa Intersection", "Asing Park", "Waipahu High School", "Salt Lake McDonalds (4561 Salt Lake Blvd)", "Airport Wendys (630 Puuloa Rd.)", "Ward Warehouse Starbucks (949 Auahi St.)", "Waialae Beach Park", "Koko Head Elementary School", "Makapuu Beach Park", "Waimanalo Elementary School / St. George", "Kainalu Elementary", "St. Mark Church and School", "Kahaluu Regional Park", "Kualoa Regional Park", "Punaluu Beach Park", "Laie Foodland", "Turtle Bay Entrance", "Waimea Bay Beach Park"]
leg_distances = [4.3, 4.2, 5.2, 5.4, 5.1, 4.2, 5.6, 4.8, 4.3, 3.6, 4.7, 7.0, 6.3, 5.4, 4.8, 6.9, 5.7, 5.1, 5.1, 6.9, 5.8, 6.1, 6.9, 5.6]

i=1
j=0
checkpoints.each do |checkpoint|
  if checkpoint == "Waipahu High School"
    Leg.create!(start_location: "Driving Section", end_location: "Driving Section", distance: "Driving Section")
  else
    Leg.create!(start_location: checkpoints[j], end_location: checkpoints[i],distance: leg_distances[j])
  end
  i+=1 
  j+=1
end