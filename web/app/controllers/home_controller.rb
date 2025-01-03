class HomeController < ApplicationController
  skip_before_action :authenticate, only: [:index]
  layout "home", only: [:index]

  def index
    render :splash
  end
end
