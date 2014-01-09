class DropRickshawObjects < ActiveRecord::Migration
  def change
  	drop_table :rickshaw_objects
  end
end
