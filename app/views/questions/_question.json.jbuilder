json.extract! question, :id, :question_text, :is_first, :created_at, :updated_at
json.url question_url(question, format: :json)
