class LeadsController < ApplicationController
  before_action :set_company_destination

  def create
    @lead = Lead.new(lead_params)
    @lead.company_destination = @company_destination

    if @lead.save
      redirect_to company_destination_path(@company_destination)
    else
      render :new
    end
  end


  private

  def set_company_destination
    @company_destination = CompanyDestination.find(params[:company_destination_id])
  end


  def lead_params
    params.require(:lead).permit(:email, :name, :date, :newsletter, :pptc)
  end

end
