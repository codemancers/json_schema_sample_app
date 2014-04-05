An example Sinatra API that uses
[JSON-Schema](http://json-schema.org/documentation.html).


### Running the app

1. `bundle install`
2. `bundle exec ruby app.rb`

The app should be available at `http://localhost:4567`

### Testing inputs

The input files can be sent to app using `curl`.

` curl -d @inputs/working_json_input_sample.txt -H 'Content-Type: application/json' http://localhost:4567`
