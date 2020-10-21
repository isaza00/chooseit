class CreateBootcamps < ActiveRecord::Migration[6.0]
  def change
    create_table :bootcamps do |t|
      t.string :name
      t.string :overall_score
      t.string :curriculum_score
      t.string :job_support_score
      t.text :description

      t.timestamps
    end
  end
end
