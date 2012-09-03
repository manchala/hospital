class Vet < ActiveRecord::Base
  attr_accessible :address, :city, :name, :num_years, :school, :state, :zip
  
  has_many :appointments
  has_many :pets, :through => :appointments
  VALID_ZIP = 	/^\d{5}$/
  
   validates :name,  presence: true, length: { maximum: 50 }
  validates :zip, presence: true, format: { with: VALID_ZIP }
  
  
end
