class Pets < ActiveRecord::Migration
  def up
  	create_table :pets do |t|
  	t.column :name, :string
  	t.column :owner, :string
  	t.column :visit_reason, :text
  	t.column :date_next_appt, :datetime
  end
  end

  def down
  end
end
