class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :group_number
      t.date :effective_date
      t.string :group_name
      t.string :locations
      t.integer :estimated_employees
      t.decimal :deductible
      t.string :eligibility
      t.integer :term_date

      t.timestamps
    end
  end
end
