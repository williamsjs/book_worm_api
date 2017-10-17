class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  def index
    @authors = Author.all

    render json: @authors
  end

  def show
    render json: @author
  end

  private
    def set_author
      @author = Author.find(params[:id])
    end
end
