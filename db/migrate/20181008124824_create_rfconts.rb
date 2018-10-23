class CreateRfconts < ActiveRecord::Migration[5.1]
  def change
    create_table :rfconts do |t|
    	t.integer :rfp_id
    	t.integer :cont_id
      t.timestamps
    end
  end
end
