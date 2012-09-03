class Pet < ActiveRecord::Base
  attr_accessible :date_next_appt, :name, :breed, :age, :weight, :type_of_pet, :owner_id, :visit_reason
  
  has_many :appointments
  has_many :vets, :through => :appointments
  belongs_to :Owner
  
 
end
