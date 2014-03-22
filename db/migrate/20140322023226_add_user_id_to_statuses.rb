class AddUserIdToStatuses < ActiveRecord::Migration
  def change
    add_reference :statuses, :user, index: true
		remove_column :statuses, :name
  end
end
