class CreateStays < ActiveRecord::Migration[5.2]
  def change
    create_table :stays do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :tenant, foreign_key: true
      t.references :studio, foreign_key: true

      t.timestamps
    end
  end
end
