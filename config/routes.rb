Rails.application.routes.draw do
  namespace :api do
    get "/actors" => "actors#actor_action"
    get "/movie" => "movies#movie_action"
    get "/all_movies" => "movies#show_all_movies"
    get "/last_2" => "movies#last_2_movies"
  end
end