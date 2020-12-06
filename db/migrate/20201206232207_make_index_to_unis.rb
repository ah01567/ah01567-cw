class MakeIndexToUnis < ActiveRecord::Migration[5.2]
  def change
    add_index :unis, :name, unique: true
  end
end
