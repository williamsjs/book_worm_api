class Author < ApplicationRecord
  belongs_to :AuthorGenres
  belongs_to :AuthorBooks
end
