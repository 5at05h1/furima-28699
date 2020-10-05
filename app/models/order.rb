class Order < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :purchase

  validates :postal_code, :prefectures_id, :municipality, :address, :phone, presence: true
  validates :postal_code, inclusion: { in: - }
  validates :prefectures_id, { other_than: 1 }
  validates :phone, { only_integer: true }, length: { maximum: 11 }
end
