class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name nul: false
      t.string :string
      t.string :email
      t.string :string

      t.timestamps null: false
    end
  end
end
