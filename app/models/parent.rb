class Parent < ApplicationRecord
	has_secure_password
	has_one :parent_profile
	has_and_belongs_to_many :babies
end
