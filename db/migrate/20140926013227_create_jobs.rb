class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :organization
      t.string :location
      t.string :title
      t.text :details
      t.date :begin_date
      t.date :end_date
      t.integer :category

      t.timestamps
    end
  end
end
