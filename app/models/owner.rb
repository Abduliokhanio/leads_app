class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :password
  
  has_many :leads
  has_many :notes, through: :leads
end
