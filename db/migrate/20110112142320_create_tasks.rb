class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :description
      t.references :project
      t.text :status
      t.text :category
      t.text :assignedTo
      t.string :estimatedDuration
      t.date :estimatedCompletionDate
      t.text :tags
      t.text :notes
      t.boolean :isArchived

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
