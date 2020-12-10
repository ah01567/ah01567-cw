class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.belongs_to :uni, index: true, foreign_key: true # Added index to department
      t.string :name, null: false    # Name cant be null

      t.timestamps
    end
  end
end
