Rails.application.routes.draw do
  namespace :api do
    get "/actors" => "actors#actor_action"
  end
end