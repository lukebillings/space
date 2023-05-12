class Lead < ApplicationRecord
  belongs_to :company_destination
  validates :email, presence: true
  validates :name, presence: true
  validates :pptc, presence: true
end
