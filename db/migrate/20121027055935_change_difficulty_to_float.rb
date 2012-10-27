class ChangeDifficultyToFloat < ActiveRecord::Migration
  def up
    change_table :questions do |t|
      t.change :difficulty, :float
    end
  end

  def down
    change_table :questions do |t|
      t.change :difficulty, :decimal, :precision => 8, :scale => 5
    end
  end
end
