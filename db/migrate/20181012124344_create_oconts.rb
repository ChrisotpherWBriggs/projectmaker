class CreateOconts < ActiveRecord::Migration[5.1]
  def change
    create_table :oconts do |t|
    	t.integer :rfp_id
    	t.integer :other_id
      t.timestamps
    end
  end
end
