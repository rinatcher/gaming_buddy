class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
  validates :age, numericality: {only_integer: true, greater_than: 0}
  validates :gender, inclusion: {in: %w[male female other] }
  validates :profile_picture, format: {with: URI::regexp(%w[http https]) }
end