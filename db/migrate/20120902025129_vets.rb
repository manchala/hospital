class Vets < ActiveRecord::Migration
  def up
  create_table :vets do |t|
  	t.column :name, :string
  	t.column :address, :string
  	t.column :city, :string
  	t.column :state, :string
  	t.column :zip, :string
  	t.column :school, :string
  	t.column :num_years, :integer
  end
  end

  def down
  end
end
