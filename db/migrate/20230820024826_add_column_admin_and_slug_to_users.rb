class AddColumnAdminAndSlugToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :slug, :string
  end
end
