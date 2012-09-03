class Pet < ActiveRecord::Base
  attr_accessible :date_next_appt, :name, :breed, :age, :weight, :type_of_pet, :owner_id, :visit_reason
  
  has_many :appointments
  has_many :vets, :through => :appointments
  belongs_to :Owner
  
  validates :name, presence :true, length :{maximum :35 }
  validates :breed, length :{maximum:35}
  validates :owner_id, presence :true
  validates :age, presence :true
  validates :weight, presence :true
  validates :date_of_last_visit, presence :true
  validates :type_of_pet, :in => %w(cat dog bird) 
 
end
