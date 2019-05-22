class Staff < ApplicationRecord

  has_many :tickets
  has_many :clients, through: :tickets
  belongs_to :department

  validates :login, :password, presence: true

  attr_accessor :login

end
