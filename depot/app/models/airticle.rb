class Airticle < ApplicationRecord
  validates :name, :affiliation, :contactaddress, :phonenumber, :title, :abstract, presence: true
#
  validates :name, uniqueness: true
end
