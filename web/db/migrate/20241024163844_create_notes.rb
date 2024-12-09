class CreateNotes < ActiveRecord::Migration[8.0]
  def change
    create_table :notes, id: :uuid do |t|
      t.string :text
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
