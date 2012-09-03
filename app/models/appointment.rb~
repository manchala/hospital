class Appointment < ActiveRecord::Base
  attr_accessible :date_of_visit, :owner_id, :pet_id, :date_next_appt, :vet_id, :visit_reason
  
  belongs_to :Vet
  belongs_to :Pet
  belongs_to :Reminder 
  
  validates :name, presence: true, length :{ maximum :35 }
  validates :type_of_pet, in => ['dog', 'cat', 'bird']
  validates :pet_id, presence: true
  validates :owner_id, presence: true
  validates :visit_reason, presence: true
  validates :date_of_visit, presence: true
  validate : no_past_date
  
  def no_past_date
    if self.date_of_visit < Date.today
      errors.add( :date, 'notinpast')
    end
end
