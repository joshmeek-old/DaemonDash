class HomeController < ApplicationController
    require 'csv'    
  def import
  end
  
  def new
    @home=Home.new
  end
  def index
    @home=Home.new 
  end
      
  def search
    
  end
  def show_data
      binding.pry
  end
  def read
    
  end
  def edit
    
  end
  def destroy
    
  end
end
