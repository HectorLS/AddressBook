class Email < ActiveRecord::Base
	belongs_to :contact

	validates :e_address, presence: true
end
