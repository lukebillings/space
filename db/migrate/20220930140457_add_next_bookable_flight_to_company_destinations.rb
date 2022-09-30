class AddNextBookableFlightToCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :company_destinations, :next_bookable_flight, :integer
  end
end
