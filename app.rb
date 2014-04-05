require "sinatra"
require "sinatra/json"
require "json-schema"

helpers do
  def validate(json_string_or_hash)
    JSON::Validator.fully_validate('schema.json', json_string_or_hash)
  end
end

post '/' do
  input = JSON.load(request.body.read)
  a = validate(input)

  if a.empty?
    json({ message: "The blog post has been saved"})
  else
    status 400
    json({ errors: a })
  end
end
