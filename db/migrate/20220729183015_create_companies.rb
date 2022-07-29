class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.integer :starting_price
      t.string :vehicle

      t.timestamps
    end
  end
end
