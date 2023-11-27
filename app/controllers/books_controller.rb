class BooksController < ApplicationController
  include Pagy::Backend

  def index
    @genre = params[:genre]
    @pagy, @books = if @genre.present?
      pagy(Book.where(genre: @genre).order(:title))
    else
      pagy(Book.all.order(:title))
    end
  end
end
