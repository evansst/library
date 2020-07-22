class BooksController < ApplicationController
  def index
    @books = Book.all

    render json: @books, include: :author
  end

  def show
    @book = Book.find(params[:id])

    render json: @book
  end

  def create
    @book = Book.create(
      title: params[:title],
      rating: params[:rating],
      author_id: params[:author_id]
    )

    render json: @book
  end
end
