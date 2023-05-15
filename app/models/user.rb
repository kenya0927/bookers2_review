class User < ApplicationRecord

  has_many :books,dependent: :destroy
  has_one_attached :profile_image
  
  def get_profile_image
    (profile_image.attached?) ? profile_image : "no_image.jpg"
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
