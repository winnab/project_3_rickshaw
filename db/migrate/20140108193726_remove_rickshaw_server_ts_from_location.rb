class RemoveRickshawServerTsFromLocation < ActiveRecord::Migration
  def change
  	remove_column :locations, :rickshaw_server_ts
  end
end
