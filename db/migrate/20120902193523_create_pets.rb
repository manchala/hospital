class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :owner
      t.text :visit_reason
      t.string :date_next_appt

      t.timestamps
    end
  end
end
