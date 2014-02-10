class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.integer :number

      t.timestamps
    end
  end
end
