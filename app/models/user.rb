class User < ApplicationRecord
  has_many :trees, dependent: :destroy
  has_many :reviews
  has_many :adoptions, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
