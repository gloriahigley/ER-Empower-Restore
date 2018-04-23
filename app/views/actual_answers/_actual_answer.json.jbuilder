json.extract! actual_answer, :id, :question_id, :possible_answer_id, :next_question_id, :assessment_id, :answer_text, :created_at, :updated_at
json.url actual_answer_url(actual_answer, format: :json)
