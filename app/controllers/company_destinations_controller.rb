class CompanyDestinationsController < ApplicationController
  def index
    @company_destinations = CompanyDestination.all
    if params.dig(:filters, :destination).present? && params.dig(:filters, :destination) != 0
        @company_destinations = @company_destinations.select { |company_destination| company_destination.destination == Destination.find(params[:filters][:destination].to_i)}
      end
      if params.dig(:filters, :vehicle).present?
          @company_destinations = @company_destinations.select { |company_destination| company_destination.company.vehicle ==  params[:filters][:vehicle]}
        end
      if params.dig(:filters, :price).present? && params.dig(:filters, :price) != 0
         max_price = params[:filters][:price].split("$")[1].split("M")[0].to_f
         @company_destinations = @company_destinations.select { |company_destination| company_destination.company.starting_price < max_price * 1000000 }
       end
  end
end

