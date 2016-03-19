class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @page = 'home'
    @page = params[:path] if params[:path]
    @location_path = "/#{@page}"
    render "static_pages/#{@page}"
  end
end
