class DropLatLngFromStop < ActiveRecord::Migration
  def change
  	remove_column :stops, :lat
  	remove_column :stops, :lng

  end
end
