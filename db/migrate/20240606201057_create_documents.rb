class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.string :name

      t.timestamps
      t.references :project, null: false, foreign_key: true
    end
  end
end
