class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :due_date
      t.string :priority
      t.string :status

      t.timestamps
      t.references :project, null: false, foreign_key: true
    end
  end
end
