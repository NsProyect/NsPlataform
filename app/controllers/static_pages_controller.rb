class StaticPagesController < ApplicationController
	before_filter :require_login, :except => [:home, :about]
  def home
         @search =Apartment.search(params[:q])
    @apartments = @search.result
  end

  def index

  end

  def help
  end

  def contact
  end

  def about
  end
end
