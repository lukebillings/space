class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    if params.dig(:filters, :destination).present? && params.dig(:filters, :destination) != 0
        @companies = @companies.select { |company| company.destinations[0] == Destination.find(params[:filters][:destination].to_i) || company.destinations[1] == Destination.find(params[:filters][:destination].to_i) || company.destinations[2] == Destination.find(params[:filters][:destination].to_i)  }
      end
      if params.dig(:filters, :vehicle).present?
          @companies = @companies.select { |company| company.vehicle ==  params[:filters][:vehicle]}
        end
  end
end
