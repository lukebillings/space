class AddTimeToCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :company_destinations, :time, :float
  end
end
