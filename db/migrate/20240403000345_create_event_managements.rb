class CreateEventManagements < ActiveRecord::Migration[7.1]
  def change
    create_table :event_managements do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
