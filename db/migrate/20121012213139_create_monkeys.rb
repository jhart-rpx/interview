class CreateMonkeys < ActiveRecord::Migration
  def change
    create_table :monkeys do |t|
      t.integer :length_of_tail
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
