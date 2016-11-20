class PricesController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @price = Price.new(price_params)
    @price.place = @place
    if @price.save
      redirect_to place_path(@place)
    else
      render 'places/show'
    end
  end

  def destroy
    @place = Place.find(params[:place_id])
    @price = Price.find(params[:id])
    @price.delete
    redirect_to place_path(@place)
  end

  private

  def price_params
    params.require(:price).permit(:cost, :drink_id)
  end
end
