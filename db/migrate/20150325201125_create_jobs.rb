class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :document_type
      t.text :document_description
      t.integer :pay
      t.datetime :need_by

      t.timestamps null: false
    end
  end
end
