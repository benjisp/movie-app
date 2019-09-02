Rails.application.routes.draw do
  namespace :api do
    get "/actors" => "actors#actor_action"
    get "/movie" => "movies#movie_action"
    get "/all_movies" => "movies#show_all_movies"
    get "/last_2" => "movies#last_2_movies"
    get "one_movie" => "movies#one_movie"
    get "segment_movie/:title" => "movies#one_movie"
    post "body_movie" => "movies#one_movie"
  end
end