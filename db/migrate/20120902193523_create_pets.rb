class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :owner_id
      t.string :breed
      t.integer :weight
      t.age :integer
      t.string :type_of_pet
      t.datetime :date_of_last_visit

      t.timestamps
    end
  end
end
