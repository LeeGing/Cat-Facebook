class User < ApplicationRecord
	has_secure_password
	has_many :contents
	validates :email, uniqueness: true, on: :create
end
