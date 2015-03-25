class CreateJobApps < ActiveRecord::Migration
  def change
    create_table :job_apps do |t|
      t.integer :writer_id
      t.integer :job_id
      t.references :job, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
