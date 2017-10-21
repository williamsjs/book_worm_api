class Book < ApplicationRecord
  has_many :book_genres
  has_many :book_images
  has_many :genres, through: :book_genres
end
