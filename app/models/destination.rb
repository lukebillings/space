class Destination < ApplicationRecord
  has_many :company_destinations, dependent: :destroy
  has_many :companies, through: :company_destination
end
