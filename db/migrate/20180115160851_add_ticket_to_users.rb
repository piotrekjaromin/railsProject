class AddTicketToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :ticket, foreign_key: true
  end
end
