class Movie < ApplicationRecord

  # validates :title, :year, presence: true
  # validates :title, uniqueness: true
  # validates :plot, length: { minimum: 10}

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

end