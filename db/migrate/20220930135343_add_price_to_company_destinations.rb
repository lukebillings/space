class AddPriceToCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :company_destinations, :price, :integer
  end
end
