class RenameTypeColumnToContacts < ActiveRecord::Migration[5.2]
  def change
    rename_column :contacts, :type, :types
  end
end
