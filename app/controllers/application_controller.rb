class ApplicationController < ActionController::Base
  before_action :get_genres

  def get_genres
    @genres = Book.pluck(:genre).uniq.sort
  end
end
