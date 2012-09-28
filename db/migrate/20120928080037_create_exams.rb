class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :area_id
      t.string :name
      t.string :source

      t.timestamps
    end
    add_index :exams, :name, :unique => true
  end
end
