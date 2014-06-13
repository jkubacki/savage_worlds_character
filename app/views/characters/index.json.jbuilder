json.array!(@characters) do |character|
  json.extract! character, :id, :name, :description, :exp, :bennies, :money, :ini_cards, :ini_min, :ini_max, :race_id, :rank_id, :character_type_id
  json.url character_url(character, format: :json)
end
