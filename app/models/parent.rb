class Parent < ApplicationRecord
	has_secure_password
	has_one :parent_profile
	has_many :babies
end
