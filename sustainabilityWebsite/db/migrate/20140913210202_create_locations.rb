class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.int :zipcode
    end
  end
end
