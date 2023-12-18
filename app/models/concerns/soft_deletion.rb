require 'active_support/concern'

module SoftDeletion
	extend ActiveSupport::Concern

	included do
    default_scope { where(deleted_at: nil) }
  end

  def soft_delete
  	update_column :deleted_at, DateTime.now
  end

  def restore
  	update_column :deleted_at, self.deleted_at = nil
  end
end