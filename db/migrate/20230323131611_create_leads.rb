class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :email
      t.string :name
      t.integer :date
      t.boolean :newsletter
      t.boolean :pptc

      t.timestamps
    end
  end
end
