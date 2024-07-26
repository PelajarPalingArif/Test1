class PhoneNumber < ApplicationRecord
  belongs_to :user
  validates :value, presence: true, format: { with: /\A\d+\z/, message: "must contain only numbers" }
end
