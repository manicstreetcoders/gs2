class CreateResults2 < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :user_id_str, :null => false
      t.integer :exam_id, :null => false
      t.integer :question_id, :null => false

      t.integer :user_selection, :null => false
      t.integer :answer, :null => false
      t.boolean :correct

      t.float :used_time, :null => false

      t.timestamps
    end
    add_index :results, :user_id_str
    add_index :results, :exam_id
    add_index :results, :question_id
  end
end
