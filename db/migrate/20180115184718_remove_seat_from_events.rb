class RemoveSeatFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :seat
  end
end
