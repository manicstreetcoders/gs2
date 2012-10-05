class AddBase64ToNarrations < ActiveRecord::Migration
  def change
    add_column :narrations, :base64, :text
  end
end
