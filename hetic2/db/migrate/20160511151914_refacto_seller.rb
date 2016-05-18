class RefactoSeller < ActiveRecord::Migration
  def change

    add_column :sellers, :email, :string

    remove_column :sellers, :description, :text # <= irreversible si absent

    rename_column :sellers, :firstname, :name

    change_column :sellers, :rate, :integer # <= irreversible
  end

=begin
  def up
    add_column :sellers, :email, :string
    remove_column :sellers, :description
    rename_column :sellers, :firstname, :name
    change_column :sellers, :rate, :integer
  end

  def down
    remove_column :sellers, :email, :string
    add_column :sellers, :description, :text
    rename_column :sellers, :name, :firstname
    change_column :sellers, :rate, :decimal
  end
=end
  
end
