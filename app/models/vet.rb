class Vet < ActiveRecord::Base
  attr_accessible :address, :city, :name, :num_years, :school, :state, :zip
end
