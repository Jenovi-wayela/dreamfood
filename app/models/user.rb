class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

        has_one_attached :avatar
    attr_accessor :admin


  def admin?
    admin
  end

  def self.user_params
    params.require(:user).permit(:email, :password, :admin)
  end
end
