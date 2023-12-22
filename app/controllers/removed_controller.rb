class RemovedController < ApplicationController
def index
		@items = Item.unscoped.where.not(deleted_at: nil)
	end

	def destroy
		@item = Item.unscoped.find(params[:id])
		@item.restore

		redirect_to removed_index_path, status: :see_other
	end

	private
		def item_params
			params.require(:item).permit(:name)
		end
end
