class Api::MoviesController < ApplicationController
  
  def index
    @movie = Movie.all
    render 'movie.json.jb'
  end

  def show
    @movie = Movie.find(params[:id])
    render 'movie.json.jb'
  end

  def create
    @movie = Movie.new(
    title: params[:title],
    year: params[:year].to_i,
    plot: params[:plot],
    director: params[:director],
    japanese: params[:japanese])
    if @movie.save
      render 'movie.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.japanese = params[:japanese] || @movie.japanese
    if @movie.save
      render 'movie.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end

  def last_2_movies
    @movie = Movie.last(2)
    render 'movie.json.jb'
  end
end