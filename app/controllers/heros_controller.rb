class HerosController < ApplicationController
  def index
    heros = Hero.all
    render json: heros
  end
  
  def create
    # Create a new cat
    hero = Hero.create(hero_params)

    # respond with our new cat
    render json: hero
  end

  # Handle strong parameters, so we are secure
  def hero_params
    params.require(:hero).permit(:name, :age, :super_power, :description)
  end
end
