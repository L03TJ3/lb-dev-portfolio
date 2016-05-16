class RemoveColumnFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :linkedin
  end
end
