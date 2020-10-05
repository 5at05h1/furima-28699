class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def index
    @orders = Order.all
  end

  def create
    @order = Order.create(order_params)
  end

  private

  def order_params
    params.require(:order).permit(:postal_code, :prefectures, :municipality, :address, :phone)
  end
end
