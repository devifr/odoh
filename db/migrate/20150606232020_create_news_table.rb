class CreateNewsTable < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :body
      t.string :author
    end
  end
end
