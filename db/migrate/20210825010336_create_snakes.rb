class CreateSnakes < ActiveRecord::Migration[6.1]
  def change
    create_table :snakes do |t|
      t.string :name
      t.string :sci_name
      t.string :picture
      t.boolean :venomous
      t.integer :max_length
      t.string :diet

      t.timestamps
    end
  end
end
