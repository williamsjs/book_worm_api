class GoogleBooksApi
  include ParamParser

  API_URL = "https://www.googleapis.com/books/v1/volumes?q="

  class << self
    def get_books title
      puts HTTParty.get("#{root_endpoint}/#{parser.replace_with_plus(title)}")
    end

  private 
    def root_endpoint
      API_URL
    end

    def parser
      parser = ParamParser
    end

  end  

end