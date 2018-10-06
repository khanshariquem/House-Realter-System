class SearchesController < ApplicationController

  def new
    @search = Search.new
    @locations = House.distinct.pluck(:location)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

    def search_params
      params.require(:search).permit(:location, :min_size, :min_cost, :max_size, :max_cost)
    end
end