require 'active_support/concern'

module SoftDeletion

	included do
    scope :disabled, -> { where(disabled: true) }
  end

  def soft_delete
  	self.deleted_at = DateTime.now
  end
end