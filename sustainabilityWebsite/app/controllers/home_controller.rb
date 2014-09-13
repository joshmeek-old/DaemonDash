class HomeController < ApplicationController
    require 'csv'    



  def new
    @home=Home.new
  end
  def index
    
  end
  def search
  csv_text = File.read('...')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Locations.create!(row.to_hash)
end
  end
  def read
    
  end
  def edit
    
  end
  def destroy
    
  end
end
