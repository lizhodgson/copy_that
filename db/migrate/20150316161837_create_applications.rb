class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :job, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :applications, :jobs
    add_foreign_key :applications, :users
  end
end
