class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :heroku, :string
  end
end
