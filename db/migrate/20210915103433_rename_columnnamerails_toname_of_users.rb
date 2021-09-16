class RenameColumnnamerailsTonameOfUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :namerails, :name
  end
end
