class Company < ActiveRecord::Base

	has_many :motives, dependent: :destroy

	validates :title, presence: true
end
