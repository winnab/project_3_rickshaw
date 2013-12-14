class CreateStops < ActiveRecord::Migration
  def up
    create_table :stops do |t|
      t.belongs_to  :driver
      t.string      :stop_contact_name  # distinct from name -- and more important to display
      t.string      :client_name        # customer's client's business name
      t.integer     :foreign_id         # ID numbers that our clients use/maintain
      t.string      :stop_type          # dropoff or pickup
      t.string      :address            # for display in left nav
      t.decimal     :latitude,  :precision=>10, :scale=>6
      t.decimal     :longitude, :precision=>10, :scale=>6
      t.integer     :route_order_index  # determined by Rickshaw and sent
      t.string      :status             # to_do, done, overdue
      t.datetime    :scheduled_time
      t.datetime    :scheduled_date
      t.timestamps
    end
  end

  def down
  	drop_table :stops
  end
end
