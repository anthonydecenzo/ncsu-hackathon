class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :nitrogen
      t.string :phosphorus
      t.string :potassium
      t.date :LastWaterTime
      t.date :NextWaterTime
      t.string :PlantType

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
