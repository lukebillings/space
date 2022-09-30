class AddFlightNameToCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :company_destinations, :flight_name, :string
  end
end
