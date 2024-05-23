class CreateProjectOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :project_owners do |t|

      t.timestamps
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
    end
  end
end
