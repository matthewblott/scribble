class AddFooColumnToNotes < ActiveRecord::Migration[7.1]
  def change
    add_column(:notes, :foo, :string)
  end
end
