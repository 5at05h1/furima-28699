class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :surname, presence: true
  validates :nickname, presence: true
  validates :email, presence: true
  validates :birthday, presence: true
  validates :name_kana, presence: true
  validates :surname_kana, presence: true

end
