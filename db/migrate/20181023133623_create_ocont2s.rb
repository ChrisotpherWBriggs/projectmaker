class CreateOcont2s < ActiveRecord::Migration[5.1]
  def change
    create_table :ocont2s do |t|
    	t.integer :rfp2_id
    	t.integer :other_id

      t.timestamps
    end
  end
end
