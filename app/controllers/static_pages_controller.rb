class StaticPagesController < ApplicationController
  def home
     
      @apartments = Apartment.all

  end

  def help
  end

  def contact
  end

  def about
  end
end
