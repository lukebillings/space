class AddCompanyDestinationReferenceToLeads < ActiveRecord::Migration[6.1]
  def change
      add_reference :leads, :company_destination, index: true, foreign_key: true
  end
end
