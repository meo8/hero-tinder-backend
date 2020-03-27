require 'rails_helper'

RSpec.describe "Heros", type: :request do
  it "gets a list of Heros" do
    
    Hero.create(name: 'Spiderman', age: 17, super_power: 'All things spider', description: 'Your friendly neighborhood Spiderman.')

    get '/heros'
    json = JSON.parse(response.body)

    expect(response).to have_http_status(:ok)
    expect(json.length).to eq 1
  end
  
   it "creates a hero" do
    # The params we are going to send with the request
    hero_params = {
      hero: {
        name: 'Buster',
        age: 4,
        super_power: 'Meow Mix, and plenty of sunshine.',
        description: 'Meow Mix, and plenty of sunshine.'
      }
    }

    # Send the request to the server
    post '/heros', params: hero_params

    # Assure that we get a success back
    expect(response).to have_http_status(:ok)

    # Look up the cat we expect to be created in the Database
    new_hero = Hero.last

    # Assure that the created cat has the correct attributes
    expect(new_hero.name).to eq('Buster')
  end
end

