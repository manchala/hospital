class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :vet_id
      t.integer :pet_id
      t.integer :owner_id
      t.datetime :date_next_appt
      t.datetime :date_of_visit
      t.text :visit_reason

      t.timestamps
    end
  end
end
