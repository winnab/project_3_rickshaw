class CreateStops < ActiveRecord::Migration
  def up
    create_table    :stops do |t|
      t.belongs_to  :driver
      t.string      :job_status
      t.string      :scheduled_status
      t.datetime    :scheduled_datetime
      t.datetime    :scheduled_date
      t.datetime    :scheduled_day
      t.datetime    :scheduled_time
      t.string      :stop_contact_name
      t.string      :stop_address
      t.string      :client_name
      t.string      :stop_type
      t.string      :rickshaw_foreign_id           
      t.decimal     :lat, :precision=>10, :scale=>6
      t.decimal     :lng, :precision=>10, :scale=>6
      t.timestamps
    end
  end

  def down
  	drop_table :stops
  end
end
