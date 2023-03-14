class ChangeDataTypeForDateOfBirth < ActiveRecord::Migration[7.0]
  def change
    change_table :students do |t|
      t.change :date_of_birth, :date
    end
  end
end
