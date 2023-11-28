class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.references :category, null: false, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :address
      t.float :longitude
      t.float :latitude
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.integer :limit

      t.timestamps
    end
  end
end
