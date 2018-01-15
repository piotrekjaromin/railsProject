class RemoveIntegerFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :integer
  end
end
