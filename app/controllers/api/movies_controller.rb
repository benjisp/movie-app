class Api::MoviesController < ApplicationController
  def movie_action
    @movie = Movie.find_by(id: 1)
    render 'movie.json.jb'
  end

  def show_all_movies
    @movie = Movie.all
    render 'movie.json.jb'
  end

  def last_2_movies
    @movie = Movie.last(2)
    render 'movie.json.jb'
  end

  def one_movie
    input = params[:title]
    @movie = Movie.find_by(title: input)
    render 'movie.json.jb'
  end
end