class AddBrokernameToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :brokername, :string
  end
end
