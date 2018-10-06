class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # belongs_to :Company
  # :confirmable, :lockable, :timeoutable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable , :omniauthable, omniauth_providers: %i[facebook]
  validates_presence_of :email,:fname
  # enum contact_mode: [:Email, :Text, :Call]
  after_create :send_mail
  def send_mail
    # send email
    UserMailer.signup_confirmation(self).deliver
  end
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.fname = auth.info.name   # assuming the user model has a name
      user.is_hunter = true
    end
  end
end
