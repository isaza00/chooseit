class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :cost
      t.string :duration
      t.text :locations, array: true, default: []
      t.text :description, array: true, default: []
      t.text :subjects, array: true, default: []
      t.belongs_to :bootcamp, null: false, foreign_key: true
      t.timestamps
    end
  end
end
