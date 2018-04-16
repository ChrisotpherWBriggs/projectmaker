class AddIdDateToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :id_date, :date
  end
end
