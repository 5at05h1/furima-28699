require 'rails_helper'

RSpec.describe Order, type: :model do
  before do
    @order = FactoryBot.build(:order)
  end

  describe '商品購入' do
    context '商品購入ができるとき' do
      it "全ての情報が存在すれば購入できる" do
        expect(@order).to be_valid
      end
    end

    context '商品の購入ができないとき' do
      it "postal_codeが空では購入できない" do
        @order.postal_code = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("Postal_code can't be blank")
      end
      it "postal_codeに-を含んでいなければ購入できない" do
        @order.postal_code = "1234567"
        @order.valid?
        expect(@order.errors.full_messages).to include("Postal_code can't be -")
      end
      it "prefectures_idが空では購入できない" do
        @order.prefectures_id = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("Prefectures_id can't be blank")
      end
      it "prefectures_idが1では購入できない" do
        @order.prefectures_id = "1"
        @order.valid?
        expect(@order.errors.full_messages).to include("Prefectures_id can't be 1")
      end
      it "municipalityが空では購入できない" do
        @order.municipality = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("Municipality can't be blank")
      end
      it "addressが空では購入できない" do
        @order.address = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("Address can't be blank")
      end
      it "phoneが空では購入できない" do
        @order.phone = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone can't be blank")
      end
      it "phoneが12桁以上では購入できない" do
        @order.phone = "000000000000"
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone is too long (within 11 digits")
      end
end
