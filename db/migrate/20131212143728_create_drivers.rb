class CreateDrivers < ActiveRecord::Migration
  def up
  	create_table	:drivers do |t|
  		t.string		:username
  		t.timestamps
  	end
  end

  def down
  	drop_table 		:drivers
  end
end
