class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start_time
      t.text :reason
      t.string :status

      t.timestamps null: false
    end
  end
end
