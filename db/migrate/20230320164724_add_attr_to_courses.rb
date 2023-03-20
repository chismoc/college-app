class AddAttrToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :course_code, :text
  end
end
