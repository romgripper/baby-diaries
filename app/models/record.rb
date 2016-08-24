class Record < ApplicationRecord
	belongs_to :baby
	validates :date, presence: true
	validates :first_time, uniqueness: true
end
