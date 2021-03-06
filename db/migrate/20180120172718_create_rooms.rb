class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :picture
      t.references :motel, foreign_key: true

      t.timestamps
    end
  end
end
