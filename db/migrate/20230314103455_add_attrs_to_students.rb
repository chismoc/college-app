class AddAttrsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :age, :integer
    add_column :students, :contact, :string
  end
end
