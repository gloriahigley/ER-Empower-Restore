json.extract! routing, :id, :question_id, :possible_id, :next_question_id, :created_at, :updated_at
json.url routing_url(routing, format: :json)
