class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :shipping
  belongs_to_active_hash :delivery
  belongs_to_active_hash :s_date
  belongs_to :user
  has_one_attached :image

  validates :name, :comment, :category_id, :status_id, :shipping_id, :delivery_id, :s_date_id, :price, :user, :image, presence: true
  validates :category_id, :status_id, :shipping_id, :delivery_id, :s_date_id, numericality: { other_than: 1 }
  validates :price, numericality: { only_integer: true }, inclusion: { in 300..9999999 }
end
