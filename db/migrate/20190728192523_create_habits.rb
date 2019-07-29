class CreateHabits < ActiveRecord::Migration[5.1]
  def change
    create_table :habits do |t|
      t.string :title
      t.date :date
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
