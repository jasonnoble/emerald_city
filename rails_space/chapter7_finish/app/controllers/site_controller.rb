class SiteController < ApplicationController
  def index
    @title = "Welcome to RailsSpace!"
  end

  def about
    @title = "About RailsSpace"
  end

  def help
    @title = "RailsSpace Help"
  end

end
