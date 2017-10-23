class Book < ApplicationRecord
  has_many :book_genres
  has_many :book_images
  has_many :genres, through: :book_genres

  def self.search(search_term)
    search_term ? where('title ILIKE ?', "%#{search_term}%") : all
  end
end
