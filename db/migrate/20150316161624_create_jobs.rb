class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :client_name
      t.string :document_type
      t.text :description
      t.integer :pay
      t.datetime :deadline
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
