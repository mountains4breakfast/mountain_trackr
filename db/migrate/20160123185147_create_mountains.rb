class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :elevation
      t.integer :difficulty
      t.float :distance
      t.text :notes

      t.belongs_to :user


      t.timestamps null: false
    end
  end
end
