require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    context '商品出品ができるとき' do
      it "全ての情報が存在すれば出品できる" do
        expect(@item).to be_valid
      end
    end

    context '商品の出品ができないとき' do
      it "nameが空では出品できない" do
        @item.name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it "commentが空では出品できない" do
        @item.comment = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Comment can't be blank")
      end
      it "category_idが空では出品できない" do
        @item.category_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Category_id can't be blank")
      end
      it "status_idが空では出品できない" do
        @item.status_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Status_id can't be blank")
      end
      it "delivery_idが空では出品できない" do
        @item.delivery_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery_id can't be blank")
      end
      it "s_date_idが空では出品できない" do
        @item.s_date_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("SDate_id can't be blank")
      end
      it "priceが空では出品できない" do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
    end
  end
end
