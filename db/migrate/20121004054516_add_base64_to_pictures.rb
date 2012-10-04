class AddBase64ToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :base64, :text
  end
end
