class AddCssToExams < ActiveRecord::Migration
  def change
    add_column :exams, :css_url, :string
  end
end
