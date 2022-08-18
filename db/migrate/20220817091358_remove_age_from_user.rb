class RemoveAgeFromUser < ActiveRecord::Migration[6.1]
  def up
    remove_column :users, :age
  end
  def down
    add_column :users, :age, :integer
  end
end
