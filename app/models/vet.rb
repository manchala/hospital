class Vet < ActiveRecord::Base
  attr_accessible :address, :city, :name, :num_years, :school, :state, :zip
  
  has_many :appointments
  has_many :pets, :through => :appointments
  VALID_ZIP = 	/^\d{5}$/
  
  validates :name, presence: true, length: {maximum :35}
  validates :zip, format :{with :VALID_ZIP}
  validates :num_years, numericality =>{:greater_than =>0, :less_than_or_equal_to => :100}
  
end
