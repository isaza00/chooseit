class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :email
      t.string :job_title
      t.boolean :anonymity
      t.text :title
      t.text :comment
      t.boolean :alum
      t.text :end_year
      t.references :course, null: false, foreign_key: true
      t.references :bootcamp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
