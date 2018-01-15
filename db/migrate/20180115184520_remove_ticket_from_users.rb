class RemoveTicketFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :ticket
  end
end
