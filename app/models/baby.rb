class Baby < ApplicationRecord
  has_and_belongs_to_many :parents

  # nick name can be empty
  validates :name, :birthday, :birth_weight, :birth_height, presence: true

end
