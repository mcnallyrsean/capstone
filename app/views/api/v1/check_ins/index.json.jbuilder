json.array! @check_ins do |check_in|
  json.id check_in.id
  json.date check_in.game.date
  json.game_id check_in.game.id
  json.team_1 check_in.game.team_1.name
  json.team_1_id check_in.game.team_1.id
  json.team_2 check_in.game.team_2.name
  json.team_2_id check_in.game.team_2.id
  json.bar check_in.bar.name 
  json.bar_id check_in.bar.id
  json.user_id check_in.user.id
end