class AddBirthdateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birthDate, :date
  end
end
