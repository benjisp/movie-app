Rails.application.routes.draw do
  namespace :api do
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "movies/:id" => "movies#destroy"
    get "/last_2" => "movies#last_2_movies"
  end
end