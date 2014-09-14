class HomeController < ApplicationController
    require 'csv'    
  def import
  end
  
  def new
    @homes=Home.new
  end
  def index
    @homes=Home.new
    csv_text = File.read(Rails.root + "lib/assets/zip_code_database.csv")
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Home.create!(row.to_hash)
    end
        @homes=Home.all
  end
      
  def search
  
  end
  def read
    
  end
  def edit
    
  end
  def destroy
    
  end
end
