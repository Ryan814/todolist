class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|

    	t.string :name,   null: false
    	t.date :due_date, null: false
    	t.text :note
      t.timestamps
    end
  end
end
