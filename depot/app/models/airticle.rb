class Airticle < ApplicationRecord
  validates :name, :affiliation, :contactaddress, :phonenumber, :title, :abstract, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :contactaddress, format: { with: VALID_EMAIL_REGEX }

  VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  validates :phonenumber, presence: true, format: { with: VALID_PHONE_REGEX }

  validates :name, uniqueness: true
end
