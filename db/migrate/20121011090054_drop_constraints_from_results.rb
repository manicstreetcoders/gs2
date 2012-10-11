class DropConstraintsFromResults < ActiveRecord::Migration
  def up
    change_column :results, :user_selection, :integer, :null => true
  end

  def down
    change_column :results, :user_selection, :integer, :null => false
  end
end
