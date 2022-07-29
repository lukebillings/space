class Company < ApplicationRecord
  has_many :destinations, through: :company_destinations
end
