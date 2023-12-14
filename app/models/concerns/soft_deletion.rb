require 'active_support/concern'

module SoftDeletion
	extend ActiveSupport::Concern

	included do
    scope :disabled, -> { where(disabled: true) }
  end

  def soft_delete
  	update_column :deleted_at, DateTime.now
  end

  def restore
  	update_column :deleted_at, nil
  end
end