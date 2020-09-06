class ShopsController < ApplicationController
	def index
		@shop = Shop.new
		@shops = Shop.all
		@basho = Shop.first
	end
	def create
		@shop = Shop.new(shop_params)
		@shop.save
		redirect_to shop_path(@shop.id)
	end
	def show
		@shop = Shop.find(params[:id])
	end

	def destroy
		shop = Shop.find(params[:id])
		shop.destroy
		redirect_to shops_path
	end
	private
	def shop_params
		params.require(:shop).permit(:address, :latitude, :longitude)
	end
end
