json.array! @team_check_ins do |team_check_in|
  json.check_in team_check_in.check_in_id
  json.team_id team_check_in.team_id
end