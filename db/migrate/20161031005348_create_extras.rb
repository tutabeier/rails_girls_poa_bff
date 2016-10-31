class CreateExtras < ActiveRecord::Migration[5.0]
  def change
    create_table :extras do |t|
      t.string :title
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
