class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.boolean :active
      t.boolean :archived
      t.string :notes
      t.integer :modified_by
      t.integer :created_by

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
