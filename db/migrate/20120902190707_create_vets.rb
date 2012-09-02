class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :school
      t.integer :num_years

      t.timestamps
    end
  end
end
