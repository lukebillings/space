class Destination < ApplicationRecord
  has_many :companies, through: :company_destinations
end
