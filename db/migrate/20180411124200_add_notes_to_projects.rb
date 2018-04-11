class AddNotesToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :notes, :text
    add_column :projects, :to_group, :boolean
    add_column :projects, :to_employees, :boolean
    add_column :projects, :logo, :boolean
    add_column :projects, :no_logo, :boolean
    add_column :projects, :elig_now, :boolean
    add_column :projects, :elig_later, :boolean
  end
end
