class Appointments < ActiveRecord::Migration
  
  def up
	create_table :appointments do |t|
  	t.column :vet_id, :integer
  	t.column :pet_id, :integer
  	t.column :date_next_appt, :datetime
  	t.column :date_of_visit, :datetime
	t.column :visit_reason, :text
  	t.column :owner_id, :integer
  end
  end

  def down
  end
end
