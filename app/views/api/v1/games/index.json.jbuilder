json.array! @games do |game|
  json.id game.id
  json.date game.date
  json.time game.time
  json.team_1_id game.team_1.name
  json.team_2_id game.team_2.name
end