class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.references :location, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
