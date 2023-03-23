class Company < ApplicationRecord
  has_many :company_destinations, dependent: :destroy
  has_many :leads
end
