class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    if params.dig(:filters, :destination).present? && params.dig(:filters, :destination) != 0
        @companies = @companies.select { |company| company.destinations[0] == Destination.find(params[:filters][:destination].to_i) || company.destinations[1] == Destination.find(params[:filters][:destination].to_i) || company.destinations[2] == Destination.find(params[:filters][:destination].to_i)  }
      end
      if params.dig(:filters, :vehicle).present?
          @companies = @companies.select { |company| company.vehicle ==  params[:filters][:vehicle]}
        end
      if params.dig(:filters, :price).present? && params.dig(:filters, :price) != 0
         max_price = params[:filters][:price].split("$")[1].to_i
         @companies = @companies.select { |company| company.starting_price < max_price * 1000000 }
       end
  end
end
