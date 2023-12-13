class ItemsController < ApplicationController

	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item(item_params)

		if @item.save
      redirect_to @item, status: :unprocessable_entity
    else
      render :new
    end
	end
end
