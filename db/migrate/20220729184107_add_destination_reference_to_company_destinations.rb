class AddDestinationReferenceToCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    add_reference :company_destinations, :destination, index: true, foreign_key: true
  end
end
