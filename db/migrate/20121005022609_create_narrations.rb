class CreateNarrations < ActiveRecord::Migration
  def change
    create_table :narrations do |t|
      t.string :title
      t.string :audio

      t.timestamps
    end
  end
end
