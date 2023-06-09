class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
    add_index :books, [:author_id, :created_at]
  end
end
