json.array! @teams do |team|
  json.id team.id
  json.name team.name
  json.league team.league.name
  json.sport team.sport.name 
end