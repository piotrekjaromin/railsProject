class RemoveTicketIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :ticket_id
  end
end
