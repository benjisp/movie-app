class Api::ActorsController < ApplicationController
  
  def actor_action
    @actor = Actor.find_by(first_name: "")
    render 'actor.json.jb'
  end
end