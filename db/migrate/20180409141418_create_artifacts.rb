class CreateArtifacts < ActiveRecord::Migration[5.1]
  def change
    create_table :artifacts do |t|
      t.integer :project_id
      t.integer :document_id

      t.timestamps
    end
  end
end
