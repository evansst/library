class AuthorsController < ApplicationController

    def index
        @authors = Author.all

        render json: @authors, include: :books
    end

    def show
        @author = Author.find(params[:id])

        render json: @author, include: :books
    end
end
