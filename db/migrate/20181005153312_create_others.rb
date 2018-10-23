class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
    	t.string :name
    	t.string :body
    	t.string :from
    	t.string :through

      t.timestamps
    end
  end
end
