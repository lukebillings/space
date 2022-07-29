class CreateCompanyDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :company_destinations do |t|

      t.timestamps
    end
  end
end
