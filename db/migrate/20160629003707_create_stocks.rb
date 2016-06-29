class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :size
      t.string :integrer
      t.string :serial, null: false
      t.string :string
      t.string :description
      t.string :text

      t.timestamps null: false

      #callbacks
        after_destroy :write_to_log

  

  protected
    def write_to_log
      Log.create(mesage: "La operación con referencia a la pieza
(:serial) y al usuario (:worker_id ) ha sido borrada #{Time.current}")
    end
    end

     add_index :serial, unique: true
  end
end
