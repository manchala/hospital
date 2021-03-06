class Pets < ActiveRecord::Migration
  def up
  	create_table :pets do |t|
  	t.column :name, :string
  	t.column :owner_id, :integer
	t.column :breed, :string
	t.column :weight, :integer
	t.column :age, :integer
  	t.column :date_of_last_visit, :datetime
  	t.column :type_of_pet, :string
  end
  end

  def down
  end
end
