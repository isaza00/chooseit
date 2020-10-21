class AddColumnToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :pay_after_grad, :boolean, default: false
    add_column :courses, :percent, :string, default: "0"
    add_column :courses, :payments, :string, default: "0"
  end
end
