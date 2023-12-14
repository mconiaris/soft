class Item < ApplicationRecord
	include SoftDeletion

	validates :name, presence: true
end
