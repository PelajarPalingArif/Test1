class User < ApplicationRecord

  has_many :phone_numbers, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/, message: "must be a valid email format" }
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true

  def id_name
    "#{id} [#{name}]"
  end
end
