class RemoveLeadFromCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    remove_reference :company_destinations, :lead, index: true, foreign_key: true
  end
end
