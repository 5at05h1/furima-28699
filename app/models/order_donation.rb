class OrderDonation
  include ActiveModel::Model
  attr_accessor :item_id, :user_id, :postal_code, :prefectures_id, :municipality, :address, :phone, :token

  with_options presence: true do
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)" }
    validates :prefectures_id, numericality: { other_than: 1 }
    validates :municipality
    validates :address
    validates :phone, length: { maximum: 11 }
    validates :phone, numericality: { message: "is invalid."}
    validates :token, presence: true
  end

  def save
    Order.create(postal_code: postal_code, prefectures_id: prefectures_id, municipality: municipality, address: address, phone: phone,)
    Purchase.create(item_id: item_id, user_id: user_id,)
  end
end