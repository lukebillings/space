class AddVehicleToCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :company_destinations, :vehicle, :string
  end
end
