class CreateSurah < ActiveRecord::Migration
  def change
    create_table :surahs do |t|
      t.string :name
      t.text :description
      t.integer :total
      t.timestamps
    end
  end
end
