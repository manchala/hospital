class Appointments < ActiveRecord::Migration
  
  def up
	create_table :appointments do |t|
  	t.column :vet_id, :integer
  	t.column :pet_id, :integer
  	t.column :type_of_pet, :string
  	t.column :date_of_visit, :datetime
  	t.column :owner_id, :integer
  end
  end

  def down
  end
end
