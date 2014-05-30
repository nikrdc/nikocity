class Replace < ActiveRecord::Migration
  def change
    remove_column :media, :type, :string
    add_column :media, :kind, :string
  end
end
