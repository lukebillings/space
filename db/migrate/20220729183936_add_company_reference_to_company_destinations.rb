class AddCompanyReferenceToCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    add_reference :company_destinations, :company, index: true, foreign_key: true
  end
end
