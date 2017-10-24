class GoogleBooksApi
  include ParamParser
  include HTTParty

  attr_reader :title

  API_URL = "https://www.googleapis.com/books/v1/volumes?q="
  
  def initialize(title)
    @title = title
  end

  def get_books
    response = self.class.get("#{root_endpoint}/#{replace_with_plus(@title)}")
    response.body
  end

  private 
    def root_endpoint
      API_URL
    end

end