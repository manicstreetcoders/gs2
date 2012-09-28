class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :exam_id
      t.integer :group_number
      t.integer :number
      t.text :xml

      t.timestamps
    end
  end
end
