class CreatePermits < ActiveRecord::Migration[5.1]
  def change
    create_table :permits do |t|
      t.float :lat
      t.float :long
      t.datetime :status_date
      t.int :city_source_id
      t.string :address

      t.timestamps
    end
  end
end
