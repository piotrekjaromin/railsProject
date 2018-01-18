class AddMinAgeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :minAge, :integer
  end
end
