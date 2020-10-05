class Order < ApplicationRecord
  belongs_to :purchase

  validates :postal_code, :prefectures, :municipality, :address, :phone, presence: true
  validates :prefectures, { other_than: 1 }
end
