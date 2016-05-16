class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :linkedin
      t.string :github

      t.timestamps null: false
    end
  end
end
