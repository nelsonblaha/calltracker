class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.text :departments
      t.text :users

      t.timestamps
    end
  end
end
