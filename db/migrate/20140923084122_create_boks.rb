class CreateBoks < ActiveRecord::Migration
  def change
    create_table :boks do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
