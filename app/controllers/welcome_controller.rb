class WelcomeController < ApplicationController
	def index
		@items = Item.all
		@removed_items = Item.unscoped.where.not(deleted_at: nil)
	end
end
