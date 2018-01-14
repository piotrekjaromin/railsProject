class AddEventToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :event, foreign_key: true
  end
end
