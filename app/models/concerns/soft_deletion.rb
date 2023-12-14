require 'active_support/concern'

module SoftDeletion
	extend ActiveSupport::Concern

	included do
    scope :disabled, -> { where(disabled: true) }
  end

  def soft_delete
  	self.deleted_at = DateTime.now
  end
end