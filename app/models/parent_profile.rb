class ParentProfile < ApplicationRecord
  GENDERS = ["Male", "Female"]
  belongs_to :parent
end
