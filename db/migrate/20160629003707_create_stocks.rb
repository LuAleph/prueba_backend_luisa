class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :size
      t.string :integrer
      t.string :serial nul: false
      t.string :string
      t.string :description
      t.string :text

      t.timestamps null: false
    end

     add_index :serial, unique:true
  end
end
