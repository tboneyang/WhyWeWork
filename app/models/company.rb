class Company < ActiveRecord::Base

	has_many :motives, dependent: :destroy

	validates :name, presence: true

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
end
