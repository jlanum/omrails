class PagesController < ApplicationController
  def home
    @pins = Pin.all
    @events = Event.all
    @events = Event.limit(5).order("starts_at asc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pins }
    end
  end

  def about
  end
  
  def contact
    @users = User.all
    end
    
  def pricing
    end
    
  def works
    end
    
  def calendar
  end
  
  
  def infographic
  end
  
  
end