class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :short, unique: true
      t.string :long

      t.timestamps null: false
    end
  end
end
