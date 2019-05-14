class Ticket < ApplicationRecord
  belongs_to :staff
  belongs_to :client
  belongs_to :department


  validates :name, :email, :subject, :body, presence: true
end
