class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.float :width
      t.float :height
      t.float :max_width
      t.float :max_height
      t.float :scaled_width
      t.float :scaled_height

      t.timestamps null: false
    end
  end
end
