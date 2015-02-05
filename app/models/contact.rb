class Contact < ActiveRecord::Base
	has_many :emails, dependent: :delete_all
	has_many :phones, dependent: :delete_all

	validates :name, presence: true, uniqueness: true, length: { in: 3..20 }, format: {with: /\A[a-z ]+\z/i }


	def self.search(search)
		search_condition = "%" + search + "%"
		where('name LIKE ?', search_condition)
 	end


end
