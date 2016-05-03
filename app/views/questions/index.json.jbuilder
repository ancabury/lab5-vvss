json.array!(@questions) do |question|
  json.extract! question, :id, :statement, :answer1, :answer2, :answer3, :correct_answer, :domain
  json.url question_url(question, format: :json)
end
