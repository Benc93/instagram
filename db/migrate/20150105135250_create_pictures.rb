class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.boolean :like

      t.timestamps
    end
  end
end
