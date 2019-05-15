class Ticket < ApplicationRecord
  belongs_to :staff, optional: true
  belongs_to :client, optional: true
  belongs_to :department, optional: true


  validates :name, :email, :subject, :body, presence: true
end
