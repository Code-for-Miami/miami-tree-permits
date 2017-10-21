class CreatePermits < ActiveRecord::Migration[5.1]
  def change
    create_table :permits do |t|
      t.float :lat
      t.float :long
      t.datetime :status_date
      t.integer :city_source_id
      t.string :address

      t.timestamps
    end
  end
end
