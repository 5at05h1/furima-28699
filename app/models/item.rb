class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :shipping
  belongs_to_active_hash :delivery
  belongs_to :user
  has_one_attached :image

  validates :name, :comment, :category_id, :status_id, :shipping_id, :delivery_id, :date_id, :price, :user, presence: true

  validates :category_id, :status_id, :shipping_id, :delivery_id, :date_id, numericality: { other_than: 1 }
end
