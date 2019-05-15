class Client < ApplicationRecord
  has_many :tickets
  has_many :staff, through: :tickets

  validates :name, presence: true
  validates :email, presence: true
end
