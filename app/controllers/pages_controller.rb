class PagesController < ApplicationController
  def home
    if user_signed_in?
    redirect_to pins_url
  else
      @result = ''
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
  
    @result = params[:f].to_i * params[:s].to_i
  
    render :action => :home
  
  end
  
end