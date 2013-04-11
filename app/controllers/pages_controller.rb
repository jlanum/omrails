class PagesController < ApplicationController
  def home
    @pins = Pin.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pins }
    end
  end

  def about
  end
  
  def contact
    end
    
  def pricing
    end
    
  def works
    end
    
  def calendar
  end
  
  def calculate
  
   
  
    render :action => :pins_url
  
    end
  
  
end