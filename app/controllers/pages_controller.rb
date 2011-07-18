class PagesController < ApplicationController
  def home
    @title = "Home"
    @car = Car.new
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
end
