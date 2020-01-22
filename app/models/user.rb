class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable,omniauth_providers: [:facebook, :google_oauth2]
  has_many :sns_credentials, dependent: :destroy

  has_one :deliver_address ,dependent: :destroy
  accepts_nested_attributes_for :deliver_address, allow_destroy: true
  

  has_many :cards

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        nickname:     auth.info.name,
        email:    auth.info.mail,
        password: Devise.friendly_token[0, 20]
      )
    end

    user
  end
end