class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :vet_id
      t.integer :pet_id
      t.integer :owner_id
      t.string :type_of_pet
      t.datetime :date_of_visit

      t.timestamps
    end
  end
end
