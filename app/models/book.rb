class Book < ApplicationRecord
  has_many :book_genres
  has_many :book_images
  has_many :genres, through: :book_genres

  def self.search(search_term)
    cool = GoogleBooksApi.get_books(search_term)
    all
  end

end
