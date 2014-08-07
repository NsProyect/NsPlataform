class User < ActiveRecord::Base
	validates :password, length: {minimum: 5}
	validates :password_confirmation: true
	validates :password_confirmation, presence: true
	validates :email, uniqueness: true
end
