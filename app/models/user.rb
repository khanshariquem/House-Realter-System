class User < ApplicationRecord
  # Include default devise modules. Others available are:
  belongs_to :Company
  # :confirmable, :lockable, :timeoutable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable
end
