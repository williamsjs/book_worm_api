class GoogleBooksApi
  API_URL = "https://www.googleapis.com/books/v1/volumes?q="

  class << self
    include ParamParser

    def get_books title
      puts HTTParty.get("#{root_endpoint}/#{replace_with_plus(title)}")
    end

  private 
    def root_endpoint
      API_URL
    end

  end  

end