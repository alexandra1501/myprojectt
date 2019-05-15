class Department < ApplicationRecord

  has_many :staff
  has_many :tickets
  has_many :clients, through: :tickets

  DEPARTMENTS = [ 'Production', 'Research & Development', 'Purchasing', 'Marketing', 'Finance', 'Management' ]
  validates_associated :staff
  validates_associated :tickets
  validates :department_name , inclusion: { in: DEPARTMENTS }

end
