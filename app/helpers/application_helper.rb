require 'pagy/extras/bootstrap'

module ApplicationHelper
  include Pagy::Frontend

  def controller?(*controller)
    controller.include?(params[:controller])
  end
end
