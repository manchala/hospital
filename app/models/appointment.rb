class Appointment < ActiveRecord::Base
  attr_accessible :date_of_visit, :owner_id, :pet_id, :date_next_appt, :vet_id, :visit_reason
  
  belongs_to :Vet
  belongs_to :Pet
  set_primary_keys :vet_id, :pet_id
  belongs_to :Reminder 
  
   validates :name,  presence: true, length: { maximum: 35 }
  validate : no_past_date
  validates :pet_id, presence: true
  validates :owner_id, presence: true
  validates :visit_reason, presence: true
  validates :date_of_visit, presence: true
  
 def no_past_date
    if self.date_of_visit < Date.today
      errors.add( :date_of_visit, 'notinpast')
    end
  end
  
end
