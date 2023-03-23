class LeadsController < ApplicationController
  def new
    @company_destination = CompanyDestination.find(params[:id])
    @lead = Lead.new
  end

  def create
    @company_destination = CompanyDestination.find(params[:id])
    @lead = Lead.new(lead_params)
    @lead.company_destination = @company_destination
    if @lead.save
      flash[:notice] = "Thank you for your interest."
    else
      flash[:notice] = "Session could not be booked!"
      redirect_to sessions_path
    end
  end


    def lead_params
      params.require(:lead).permit(:email, :name, :date, :newsletter, :pptc)
    end

end
