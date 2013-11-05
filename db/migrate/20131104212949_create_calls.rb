class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :department
      t.references :user, index: true

      t.timestamps
    end
  end
end
