class User < ApplicationRecord
	has_secure_password
	validates :email, uniqueness: true, on: :create
	has_many :contents
end
