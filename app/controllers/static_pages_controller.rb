class StaticPagesController < ApplicationController
	before_filter :require_login, :except => [:home, :about]
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
