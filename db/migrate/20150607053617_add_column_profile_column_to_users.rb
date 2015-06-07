class AddColumnProfileColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :alamat, :text
    add_column :users, :no_telp, :string
    add_column :users, :pin_bb, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
  end
end
