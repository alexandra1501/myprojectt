class Client < ApplicationRecord
  has_many :tickets
  has_many :staff, through: :tickets

  validates :name, :email, presence :true
end
