class Envrobots::RobotsController < ApplicationController
  def index
    if Rails.env.production?
      render file: 'config/robots/robots.production.txt', content_type: 'text/plain'
    else
      render file: 'config/robots/robots.other.txt', content_type: 'text/plain'
    end
  end
end