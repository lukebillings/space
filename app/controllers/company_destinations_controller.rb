class CompanyDestinationsController < ApplicationController
  def index
    @company_destinations = CompanyDestination.all
  end
end

