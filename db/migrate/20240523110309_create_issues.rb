class CreateIssues < ActiveRecord::Migration[7.1]
  def change
    create_table :issues do |t|
      t.string :title
      t.string :description
      t.string :status
      t.string :priority
      t.string :assigned_to
      t.string :created_by

      t.timestamps
      t.references :project,null: false, foreign_key: true
    end
  end
end
