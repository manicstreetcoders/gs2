class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :exam_id
      t.integer :score

      t.timestamps
    end
  end
end
