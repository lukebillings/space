class CompanyDestination < ApplicationRecord
  belongs_to :company
  belongs_to :destination
  has_many :leads, dependent: :destroy
end
