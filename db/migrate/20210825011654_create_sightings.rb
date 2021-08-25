class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.string :comment
      t.string :location
      t.date :date
      t.string :size
      t.integer :user_id

      t.timestamps
    end
  end
end
