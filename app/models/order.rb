class Order < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :purchase
  attr_accessor :token

  with_options presence: true do
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)" }
    validates :municipality
    validates :address
    validates :phone, length: { maximum: 11 }
    validates :phone, numericality: { message: "is invalid."}
    validates :prefectures_id, numericality: { other_than: 1 }
    validates :token, presence: true
  end
end
