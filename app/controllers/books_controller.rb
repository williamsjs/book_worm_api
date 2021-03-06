class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]

  def index
    @books = Book.search(params[:title])

    render json: @books
  end

  def show
    render json: @book
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    render status: :forbidden
  end

  private 
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :synopsis, :publisher, :average_rating, :country)
    end
end
