class AddUserToTicketss < ActiveRecord::Migration
  def change
    add_reference :tickets, :user, foreign_key: true
  end
end
