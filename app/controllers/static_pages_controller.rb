class StaticPagesController < ApplicationController
	before_filter :require_login, :except => [:home, :about]
  def home
      if params[:cost]
         @apartments = Apartment.search(params[:cost],params[:room],params[:datein],params[:dateout])
      else
        @apartments = Apartment.all
      end  
      

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
