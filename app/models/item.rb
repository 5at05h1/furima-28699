class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :shipping
  belongs_to :user
  has_one_attached :image

  validates :name, :comment, :category, :status, :shipping, :delivery, :date, :price, :user, presence: true

  validates :category_id, :status_id, :shipping_id, :delivery_id, :date_id, numericality: { other_than: 1 }
end
