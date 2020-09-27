class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create!(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:name, :comment, :category_id, :status_id, :shipping_id, :delivery_id, :s_date_id, :price).merge(user_id: current_user.id)
  end

end