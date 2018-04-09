class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.integer :project_id
      t.integer :product_id

      t.timestamps
    end
  end
end
