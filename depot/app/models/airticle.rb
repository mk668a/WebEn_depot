class Airticle < ApplicationRecord
  validates :name, :affiliation, :contactaddress, :phonenumber, :title, :abstract, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :contactaddress, format: { with: VALID_EMAIL_REGEX }
#
  validates :name, uniqueness: true
end
