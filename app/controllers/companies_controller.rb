class CompaniesController < ApplicationController
  def index
    @with_includes = !(params[:n_p_1] == "true")
    @companies = 

    @companies = if @with_includes
      Company.includes(:employees)
    else
      Company
    end.all
  end
end