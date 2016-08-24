class Parent < ApplicationRecord
	has_secure_password
	has_one :parent_profile, dependent: :destroy
	has_and_belongs_to_many :babies

	validates :username, :password, presence: true
	validates :username, uniqueness: true
end
