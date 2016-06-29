class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :worker
      t.string :references
      t.string :stock
      t.string :references

      t.timestamps null: false
    end
  end
end
