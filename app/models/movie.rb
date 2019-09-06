class Movie < ApplicationRecord

  validates :title, :year, presence: true
  validates :title, uniqueness: true
  validates :plot, length: { minimum: 10}

end