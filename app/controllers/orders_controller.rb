class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def index
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def order_params
    params.permit(:postal_code, :prefectures_id, :municipality, :address, :phone).merge(token: params[:token])
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Peyjp::Charge.create(
      amount: order_params[:postal_code, :prefectures_id, :municipality, :address, :phone],
      card: order_params[:token],
      currency: 'jpy'
    )
  end
end
