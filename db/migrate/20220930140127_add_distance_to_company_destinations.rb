class AddDistanceToCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :company_destinations, :distance, :float
  end
end
