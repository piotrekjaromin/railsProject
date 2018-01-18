class AddNumberOfTicketsToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :numberOfTickets, :integer
  end
end
