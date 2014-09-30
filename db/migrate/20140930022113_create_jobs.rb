class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :organization
      t.string :location
      t.text :details
      t.date :start_date
      t.date :end_date
      t.integer :category_id

      t.timestamps
    end
  end
end
