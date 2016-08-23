class ParentProfile < ApplicationRecord
  GENDERS = ["Male", "Female"]
  belongs_to :parent
  validates :gender, inclusion: GENDERS
  validates :name, :gender, :birthday, presence: true
end
