class CreateRf2conts < ActiveRecord::Migration[5.1]
  def change
    create_table :rf2conts do |t|
    	t.integer :rfp2_id
    	t.integer :cont_id
      t.timestamps
    end
  end
end
