require 'rails_helper'

RSpec.describe "Heros", type: :request do
  it "gets a list of Heros" do
    # Create a new cat in the Test Database (not the same one as development)
    Hero.create(name: 'Spiderman', age: 17, super_power: 'spidey senses', description: 'Walks in the park')

    # Make a request to the API
    get '/heros'

    # Convert the response into a Ruby Hash
    json = JSON.parse(response.body)

    # Assure that we got a successful response
    expect(response).to have_http_status(:ok)

    # Assure that we got one result back as expected
    expect(json.length).to eq 1
  end
end

