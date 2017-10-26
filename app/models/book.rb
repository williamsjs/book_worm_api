class Book < ApplicationRecord
  has_many :book_genres
  has_many :book_images
  has_many :genres, through: :book_genres

  class << self
    def search(search_term)
      get_books(search_term)
    end

    private
      def get_books(search_term)
        new_book(search_term).get_books
      end
    
      def new_book(search_term)
        GoogleBooksApi.new(search_term)
      end
  end

end
