class AddSlugToSecrets < ActiveRecord::Migration
  def change
  	add_column :secrets, :slug, :string
  	add_index :secrets, :slug
  end
end
